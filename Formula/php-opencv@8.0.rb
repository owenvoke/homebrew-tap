class PhpOpencvAT80 < Formula
  desc "PHP OpenCV extension"
  homepage "https://github.com/php-opencv/php-opencv"
  url "https://github.com/php-opencv/php-opencv/archive/master.tar.gz"

  version "0.x"

  PHP_FORMULA = "php@8.0".freeze

  depends_on "autoconf" => :build
  depends_on "opencv" => [:build, :test]
  depends_on self::PHP_FORMULA => [:build, :test]
  depends_on "pkg-config" => :build

  def install
    safe_phpize
    system "./configure", "--prefix=#{prefix}", phpconfig, "--with-opencv"
    system "make", "CXXFLAGS=-std=c++11"
    prefix.install "modules/#{extension}.so"
    write_config_file
  end

  def safe_phpize
    ENV["PHP_AUTOCONF"] = "#{Formula["autoconf"].opt_bin}/autoconf"
    ENV["PHP_AUTOHEADER"] = "#{Formula["autoconf"].opt_bin}/autoheader"
    system "#{Formula[self.class::PHP_FORMULA].opt_bin}/phpize"
  end

  def phpconfig
    "--with-php-config=#{Formula[self.class::PHP_FORMULA].opt_bin}/php-config"
  end

  def extension
    "opencv"
  end

  def module_path
    opt_prefix / "#{extension}.so"
  end

  def config_file
    <<~EOS
      [#{extension}]
      extension="#{module_path}"
    EOS
  rescue error
    raise error
  end

  def caveats
    <<~EOS
      To finish installing #{extension} for PHP 8.0:
        * #{config_filepath} was created,"
          do not forget to remove it upon extension removal."
        * Validate installation by running php -m
    EOS
  end

  test do
    output = shell_output("#{Formula[self.class::PHP_FORMULA].opt_bin}/php -m").downcase
    assert_match(/#{extension.downcase}/, output, "failed to find extension in php -m output")
  end

  def config_scandir_path
    etc / "php" / "8.0" / "conf.d"
  end

  def config_filepath
    config_scandir_path / "#{extension}.ini"
  end

  def write_config_file
    if config_filepath.file?
      inreplace config_filepath do |s|
        s.gsub!(/^(;)?(\s*)(zend_)?extension=.+$/, "\\1\\2extension=\"#{module_path}\"")
      end
    elsif config_file
      config_scandir_path.mkpath
      config_filepath.write(config_file)
    end
  end
end

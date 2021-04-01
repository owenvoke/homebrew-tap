class Lambo < Formula
  desc "Super-powered `laravel new` for Laravel and Valet"
  homepage "https://github.com/tighten/lambo"
  url "https://github.com/tighten/lambo/raw/v1.0.1/builds/lambo"
  sha256 "04e612126589b8b5858b6f0797daa79adcb8818335aa268014c8f27688faffd5"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle :unneeded

  depends_on "php"

  def install
    bin.install "lambo"
  end

  test do
    system "#{bin}/lambo", "--version"
  end
end

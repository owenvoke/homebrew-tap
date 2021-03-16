class Lambo < Formula
  desc "Super-powered `laravel new` for Laravel and Valet"
  homepage "https://github.com/tighten/lambo"
  url "https://github.com/tighten/lambo/raw/v1.0.0/builds/lambo"
  sha256 "6d92e1fa2d00f4528129ddc51e04bd2885e9d652090db4187c784ece6a3f0e9b"
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

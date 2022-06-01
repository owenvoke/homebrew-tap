class Lambo < Formula
  desc "Super-powered `laravel new` for Laravel and Valet"
  homepage "https://github.com/tighten/lambo"
  url "https://github.com/tighten/lambo/raw/2.0.1/builds/lambo"
  sha256 "fb5e4a6f87239bd5692a7314ebf2542c4f14d2806126a1b6907b8393c65a4341"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "php"

  def install
    bin.install "lambo"
  end

  test do
    system "#{bin}/lambo", "--version"
  end
end

class Lambo < Formula
  desc "Super-powered `laravel new` for Laravel and Valet"
  homepage "https://github.com/tighten/lambo"
  url "https://github.com/tighten/lambo/raw/v3.1.1/builds/lambo"
  sha256 "d22aea56a8c7635d8a2821c40e89839750ef9eeb2295b16612f2e7c775e31abf"
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

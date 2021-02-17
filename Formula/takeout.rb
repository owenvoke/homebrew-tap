class Takeout < Formula
  desc "Docker-based development-only dependency manager"
  homepage "https://github.com/tighten/takeout"
  url "https://github.com/tighten/takeout/raw/v1.8.5/builds/takeout"
  sha256 "2f566c532dc81342ba05b242a49683207f6e9ed953e2964b45d0e996ab40f78b"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle :unneeded

  depends_on "php"

  def install
    bin.install "takeout"
  end

  test do
    system "#{bin}/takeout", "--version"
  end
end

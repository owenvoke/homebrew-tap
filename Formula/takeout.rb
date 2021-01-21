class Takeout < Formula
  desc "Docker-based development-only dependency manager"
  homepage "https://github.com/tighten/takeout"
  url "https://github.com/tighten/takeout/raw/v1.8.4/builds/takeout"
  sha256 "e11243f60e223f49f25157d412b852fb993178f9cba66c5216726a8bc83b8238"
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

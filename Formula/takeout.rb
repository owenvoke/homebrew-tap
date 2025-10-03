class Takeout < Formula
  desc "Docker-based development-only dependency manager"
  homepage "https://github.com/tighten/takeout"
  url "https://github.com/tighten/takeout/raw/v3.2.0/builds/takeout"
  sha256 "967288bd55f69ad3167c2d962480daff7999c6f9d87af7597461774f82d36b90"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "php"

  def install
    bin.install "takeout"
  end

  test do
    system "#{bin}/takeout", "--version"
  end
end

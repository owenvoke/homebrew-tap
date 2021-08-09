class Takeout < Formula
  desc "Docker-based development-only dependency manager"
  homepage "https://github.com/tighten/takeout"
  url "https://github.com/tighten/takeout/raw/v1.8.10/builds/takeout"
  sha256 "8555cb1702bc1c48929364d378421dc132c0e5144d6ad06c6877d5f389e4f530"
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

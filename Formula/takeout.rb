class Takeout < Formula
  desc "Docker-based development-only dependency manager"
  homepage "https://github.com/tighten/takeout"
  url "https://github.com/tighten/takeout/raw/v2.5.1/builds/takeout"
  sha256 "8d8f33eb74c43307a623a44845bfc8c7e5d2364538090a01f5fba8d55a670047"
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

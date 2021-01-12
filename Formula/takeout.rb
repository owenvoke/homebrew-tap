class Takeout < Formula
  desc "Docker-based development-only dependency manager"
  homepage "https://gitea.com/tighten/takeout"
  url "https://github.com/tighten/takeout/raw/v1.8.1/builds/takeout"
  sha256 "cc7f1c7046c83d93a283f50e759096ca710555f57b31c3cfd48c2157cf4a5ab3"
  license "MIT"

  bottle :unneeded

  depends_on "php"

  def install
    bin.install "takeout"
  end

  test do
    system "#{bin}/takeout", "--version"
  end
end

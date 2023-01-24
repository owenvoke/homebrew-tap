class Porter < Formula
  desc "Background service manager"
  homepage "https://github.com/anystack-sh/porter"
  url "https://github.com/anystack-sh/porter/raw/0.0.4/builds/porter"
  sha256 "55f34f4d722827d4bb9c0c8c578f2b85c8ac116f01a2f07548b6000e6e725594"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "php"

  def install
    bin.install "porter"
  end

  test do
    system "#{bin}/porter", "--version"
  end
end

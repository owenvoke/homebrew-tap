class Porter < Formula
  desc "Background service manager"
  homepage "https://github.com/anystack-sh/porter"
  url "https://github.com/anystack-sh/porter/raw/v0.0.6/builds/porter"
  sha256 "8281d1373aea64ad477227110fe8f04e0c3c43f91373c1a821ba2acefde0ecbe"
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

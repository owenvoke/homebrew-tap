class Porter < Formula
  desc "Background service manager"
  homepage "https://github.com/anystack-sh/porter"
  url "https://github.com/anystack-sh/porter/raw/v0.0.11/builds/porter"
  sha256 "b7f4a4e896a4a902a12fdcbd0ae4393a8eecf536d5076951db54cdc7997255a4"
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

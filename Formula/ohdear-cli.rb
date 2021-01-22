class OhdearCli < Formula
  desc "Tool to manage your Oh Dear sites"
  homepage "https://github.com/nunomaduro/ohdear-cli"
  url "https://github.com/nunomaduro/ohdear-cli/releases/download/v2.6.0/ohdear-cli.phar"
  sha256 "6526e0f0f4d23bbf111f53a6c7b4e6980651353186e6e9bbbb459512fbc2e238"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle :unneeded

  depends_on "php"

  def install
    bin.install "ohdear-cli.phar" => "ohdear-cli"
  end

  test do
    system "#{bin}/ohdear-cli", "--version"
  end
end

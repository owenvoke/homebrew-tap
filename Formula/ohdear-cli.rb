class OhdearCli < Formula
  desc "Tool to manage your Oh Dear sites"
  homepage "https://github.com/nunomaduro/ohdear-cli"
  url "https://github.com/nunomaduro/ohdear-cli/releases/download/v2.7.0/ohdear-cli.phar"
  sha256 "33a193016fe74b3e17e6e137053f43a3060ab9e1407299b98c8f7cb5700a07c5"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "php"

  def install
    bin.install "ohdear-cli.phar" => "ohdear-cli"
  end

  test do
    system "#{bin}/ohdear-cli", "--version"
  end
end

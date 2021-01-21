class OhdearCli < Formula
  desc "Tool to manage your Oh Dear sites"
  homepage "https://github.com/nunomaduro/ohdear-cli"
  url "https://github.com/nunomaduro/ohdear-cli/releases/download/v2.5.0/ohdear-cli.phar"
  sha256 "9ff436a103c48346f478d5e96e66cf7648e111df5d9d5aeb04347cad0f8bced2"
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

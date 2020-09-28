class Tea < Formula
  desc "Command-line tool to interact with Gitea servers"
  homepage "https://gitea.com/gitea/tea"

  url "https://dl.gitea.io/tea/0.5.0/tea-0.5.0-darwin-10.6-amd64"
  sha256 "f51d4d5c4aefb4a37d904d215c5c5ddd8b3d209e0af9d40e2c4a5e717b258a53"

  bottle :unneeded

  def install
    bin.install "tea-0.5.0-darwin-10.6-amd64" => "tea"
  end

  test do
    system "#{bin}/tea", "--version"
  end
end

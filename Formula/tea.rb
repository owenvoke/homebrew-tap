class Tea < Formula
  desc "Command-line tool to interact with Gitea servers"
  homepage "https://gitea.com/gitea/tea"
  url "https://dl.gitea.io/tea/0.6.0/tea-0.6.0-darwin-amd64"
  version "0.7.0"
  sha256 "8d2e61d7f8ef92f9198f903cf99dc889468a710466397244993cb5218be2276c"

  bottle :unneeded

  def install
    bin.install "tea-#{version}-darwin-amd64" => "tea"
  end

  test do
    system "#{bin}/tea", "--version"
  end
end

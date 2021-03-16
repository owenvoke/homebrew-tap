class Tea < Formula
  desc "Command-line tool to interact with Gitea servers"
  homepage "https://gitea.com/gitea/tea"
  url "https://dl.gitea.io/tea/0.7.0/tea-0.7.0-darwin-amd64"
  version "0.7.0"
  sha256 "20a350fb8583ee7e33f133d73caf74a789805995e999e6ebd8fd09c0383e0158"

  bottle :unneeded

  def install
    bin.install "tea-#{version}-darwin-amd64" => "tea"
  end

  test do
    system "#{bin}/tea", "--version"
  end
end

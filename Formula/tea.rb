class Tea < Formula
  desc "Command-line tool to interact with Gitea servers"
  homepage "https://gitea.com/gitea/tea"
  url "https://dl.gitea.io/tea/0.8.0/tea-0.8.0-darwin-amd64.xz"
  version "0.8.0"
  sha256 "8d9aaef2c9e851759a575892d5af8dd2130f0b9c5705189572a282f812126a48"

  depends_on "xz"

  bottle :unneeded

  def install
    bin.install "tea-#{version}-darwin-amd64" => "tea"
  end

  test do
    system "#{bin}/tea", "--version"
  end
end

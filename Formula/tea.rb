class Tea < Formula
  desc "Command-line tool to interact with Gitea servers"
  homepage "https://gitea.com/gitea/tea"
  url "https://dl.gitea.io/tea/0.8.0/tea-0.8.0-darwin-amd64"
  version "0.8.0"
  sha256 "654b9dcfd224a11bb105817e629b92e101ee542baca1ffea89e4a3a3b9b27e36"

  bottle :unneeded

  def install
    bin.install "tea-#{version}-darwin-amd64" => "tea"
  end

  test do
    system "#{bin}/tea", "--version"
  end
end

require 'formula'

class Tea < Formula
  homepage 'https://gitea.com/gitea/tea'
  version '0.3.1'

  url "https://dl.gitea.io/tea/#{version}/tea-#{version}-darwin-10.6-amd64"
  sha256 'a9d1881bbd642c414b2f7177bfed1a6b560fdaa8ee791add38d35317c8973728'

  bottle :unneeded

  def install
    bin.install "tea-#{version}-darwin-10.6-amd64" => 'tea'
  end
end

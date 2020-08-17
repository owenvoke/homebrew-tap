require 'formula'

class Tea < Formula
  homepage 'https://gitea.com/gitea/tea'
  version '0.4.0'

  url "https://dl.gitea.io/tea/#{version}/tea-#{version}-darwin-10.6-amd64"
  sha256 '9d8bebec8a67abd6ce060358bb1a63ca4dc47953104f653a5ba66f6522084224'

  bottle :unneeded

  def install
    bin.install "tea-#{version}-darwin-10.6-amd64" => 'tea'
  end
end

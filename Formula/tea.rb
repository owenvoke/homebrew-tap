require 'formula'

class Tea < Formula
  homepage 'https://gitea.com/gitea/tea'
  version '0.3.0'

  url "https://dl.gitea.io/tea/#{version}/tea-#{version}-darwin-10.6-amd64"
  sha256 '185aee306028715aea58f45888af0685173c01a1d4a30e0c9bccc4bf854f7a6b'

  bottle :unneeded

  def install
    bin.install "tea-#{version}-darwin-10.6-amd64" => 'tea'
  end
end

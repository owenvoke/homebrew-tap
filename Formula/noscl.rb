class Noscl < Formula
  desc "Command-line client for Nostr"
  homepage "https://github.com/fiatjaf/noscl"
  url "https://github.com/fiatjaf/noscl/archive/v0.6.0.tar.gz"
  sha256 "4cabb22ca6e739b89003f79ae7bd17d3197802456b8395f5ddde4e412bffa2a2"
  license :public_domain
  head "https://github.com/fiatjaf/noscl.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"noscl"
  end

  test do
    system bin/"noscl", "help"
  end
end

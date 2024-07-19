class Ijhttp < Formula
  desc "Use IntelliJ HTTP on the command-line"
  homepage "https://blog.jetbrains.com/idea/2022/12/http-client-cli-run-requests-and-tests-on-ci"
  url "https://download-cdn.jetbrains.com/resources/intellij/http-client/241.14494.240/intellij-http-client.zip"
  sha256 "3de70607e8307501906d6778d35a9e0852db9abf5f98805dee51b02e544b6868"

  livecheck do
    strategy :header_match
    url "https://jb.gg/ijhttp/latest"
    regex(%r{http-client/([\d.]+)/intellij-http-client\.zip$}i)
  end

  depends_on "openjdk@17"

  def install
    bin.install "ijhttp"
    bin.install "lib"
  end
end

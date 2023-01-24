class Ijhttp < Formula
  desc "Use IntelliJ HTTP on the command-line"
  homepage "https://blog.jetbrains.com/idea/2022/12/http-client-cli-run-requests-and-tests-on-ci"
  url "https://download-cdn.jetbrains.com/resources/intellij/http-client/0.22/intellij-http-client.zip"
  sha256 "43ab86b48d8c6909187643aa8d6a3bcaf5b0a4bf6aacaf2f118a058226be3e5e"

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

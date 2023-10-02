class Ijhttp < Formula
  desc "Use IntelliJ HTTP on the command-line"
  homepage "https://blog.jetbrains.com/idea/2022/12/http-client-cli-run-requests-and-tests-on-ci"
  url "https://download-cdn.jetbrains.com/resources/intellij/http-client/232.9559.62/intellij-http-client.zip"
  sha256 "b1bc79dad90639d9e4d0ade305810a340010391fc6690624a2b5aca4e905b214"

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

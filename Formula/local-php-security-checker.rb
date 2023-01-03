class LocalPhpSecurityChecker < Formula
  desc "Check if your PHP application uses packages with known security vulnerabilities"
  homepage "https://github.com/fabpot/local-php-security-checker"
  url "https://github.com/fabpot/local-php-security-checker/releases/download/v2.0.6/local-php-security-checker_2.0.6_darwin_amd64"
  version "2.0.6"
  sha256 "d7bd8154d76ace5a1e9d7f6af3176714830971b5af2ca81f1b63576a885e07b5"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install "local-php-security-checker_#{version}_darwin_amd64" => "local-php-security-checker"
  end

  test do
    system "#{bin}/local-php-security-checker", "--help"
  end
end

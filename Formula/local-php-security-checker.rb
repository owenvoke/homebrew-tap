class LocalPhpSecurityChecker < Formula
  desc "Check if your PHP application uses packages with known security vulnerabilities"
  homepage "https://github.com/fabpot/local-php-security-checker"
  url "https://github.com/fabpot/local-php-security-checker/releases/download/v1.2.0/local-php-security-checker_1.2.0_darwin_amd64"
  version "1.2.0"
  sha256 "a52bbaff7888ab5698c76ea4134ec66fd79cdb7974edbe5ff1162a052cef3b27"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle :unneeded

  def install
    bin.install "local-php-security-checker_#{version}_darwin_amd64" => "local-php-security-checker"
  end

  test do
    system "#{bin}/local-php-security-checker", "--help"
  end
end

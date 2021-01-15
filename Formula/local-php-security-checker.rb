class LocalPhpSecurityChecker < Formula
  desc "Check if your PHP application uses packages with known security vulnerabilities"
  homepage "https://github.com/fabpot/local-php-security-checker"
  url "https://github.com/fabpot/local-php-security-checker/releases/download/v1.0.0/local-php-security-checker_1.0.0_darwin_amd64"
  version "1.0.0"
  sha256 "8c363d605116e84cf9ac28ac3838ca7979f7306916049bdb3f0f1fe2a8764d82"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle :unneeded

  def install
    bin.install "local-php-security-checker_1.0.0_darwin_amd64" => "local-php-security-checker"
  end

  test do
    system "#{bin}/local-php-security-checker", "--help"
  end
end

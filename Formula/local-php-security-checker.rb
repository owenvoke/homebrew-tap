class LocalPhpSecurityChecker < Formula
  desc "Check if your PHP application uses packages with known security vulnerabilities"
  homepage "https://github.com/fabpot/local-php-security-checker"
  url "https://github.com/fabpot/local-php-security-checker/releases/download/v2.0.5/local-php-security-checker_2.0.5_darwin_amd64"
  version "2.0.5"
  sha256 "072fc83cffd50c42432cd5c895113652ff64f25c193bc60719dcd63a2aa9fbad"

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

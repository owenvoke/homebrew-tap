class LocalPhpSecurityChecker < Formula
  desc "Check if your PHP application uses packages with known security vulnerabilities"
  homepage "https://github.com/fabpot/local-php-security-checker"
  url "https://github.com/fabpot/local-php-security-checker/releases/download/v2.0.4/local-php-security-checker_2.0.4_darwin_amd64"
  version "2.0.4"
  sha256 "da808296195dbaf9212f45688859dae9e3ce387bc28f9e267375d8064cb92a94"

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

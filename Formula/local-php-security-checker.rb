class LocalPhpSecurityChecker < Formula
  desc "Check if your PHP application uses packages with known security vulnerabilities"
  homepage "https://github.com/fabpot/local-php-security-checker"
  version "2.1.3"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  if Hardware::CPU.arm?
    sha256 "31753d681c0c67a673aac71c68da18401fe87aa8cf2097f98e91696e127a8186"
    url "https://github.com/fabpot/local-php-security-checker/releases/download/v2.1.3/local-php-security-checker_darwin_arm64",
        verified: "https://github.com/fabpot/local-php-security-checker/releases/"
  end

  if Hardware::CPU.intel?
    sha256 "4734f48369f60012e408cb83af0f7bb15f1cbb3f626cf26a38c3434e610247b0"
    url "https://github.com/fabpot/local-php-security-checker/releases/download/v2.1.3/local-php-security-checker_darwin_amd64",
        verified: "https://github.com/fabpot/local-php-security-checker/releases/"
  end

  def install
    bin.install "local-php-security-checker_darwin_amd64" => "local-php-security-checker" if Hardware::CPU.intel?
    bin.install "local-php-security-checker_darwin_arm64" => "local-php-security-checker" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/local-php-security-checker", "--help"
  end
end

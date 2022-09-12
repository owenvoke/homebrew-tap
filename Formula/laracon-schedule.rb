class LaraconSchedule < Formula
  desc "Keep up to date with the Laracon Online schedule"
  homepage "https://github.com/nunomaduro/laracon-schedule"
  url "https://github.com/nunomaduro/laracon-schedule/raw/v1.9.0/builds/laracon-schedule"
  sha256 "1816907f9b71e2e334ef7a902a113cfba9290e1c50f7791be5234e9db50d587b"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "php"

  def install
    bin.install "laracon-schedule"
  end

  test do
    system "#{bin}/laracon-schedule", "--version"
  end
end

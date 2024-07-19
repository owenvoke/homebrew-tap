class RugbySchedule < Formula
  desc "Keep up to date with rugby tournament schedules"
  homepage "https://github.com/owenvoke/rugby-schedule"
  url "https://github.com/owenvoke/rugby-schedule/raw/v1.12.0/builds/rugby-schedule"
  sha256 "7b33c6278b89ec96848b9d5efef250a22def86fdefc1cc2a4def1ba50677d2c8"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "php"

  def install
    bin.install "rugby-schedule"
  end

  test do
    system "#{bin}/rugby-schedule", "--version"
  end
end

class RugbySchedule < Formula
  desc "Keep up to date with rugby tournament schedules"
  homepage "https://github.com/owenvoke/rugby-schedule"
  url "https://github.com/owenvoke/rugby-schedule/raw/v1.8.0/builds/rugby-schedule"
  sha256 "fee9065199ebcc4f83daf81a8075b80dce33aeb326647f5dae285d398d469a1a"
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

class RugbySchedule < Formula
  desc "Keep up to date with rugby tournament schedules"
  homepage "https://github.com/owenvoke/rugby-schedule"
  url "https://github.com/owenvoke/rugby-schedule/raw/v1.4.0/builds/rugby-schedule"
  sha256 "e733fe97e3306326408554a4d0eb7ac1f048153b5693afb3983485e13df45c2f"
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

class RugbySchedule < Formula
  desc "Keep up to date with rugby tournament schedules"
  homepage "https://github.com/owenvoke/rugby-schedule"
  url "https://github.com/owenvoke/rugby-schedule/raw/v1.7.5/builds/rugby-schedule"
  sha256 "28ca7279adfdc7098a176da6daf41f6fe8ef30678de2b7f53445d914dcf3f149"
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

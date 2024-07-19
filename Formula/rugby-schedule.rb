class RugbySchedule < Formula
  desc "Keep up to date with rugby tournament schedules"
  homepage "https://github.com/owenvoke/rugby-schedule"
  url "https://github.com/owenvoke/rugby-schedule/raw/v1.11.0/builds/rugby-schedule"
  sha256 "cf7a75adc49aefba4f7ceab3b9e91bd5920498d841d38b74a62d194b4d81b2e7"
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

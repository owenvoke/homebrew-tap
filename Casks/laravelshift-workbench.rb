cask "laravelshift-workbench" do
  version "1.0.1"

  if Hardware::CPU.intel?
    sha256 "c45598ddb972caf95ab7a1625647e04afb9c93bfe0172b71ef50387955ce08f6"

    url "https://shift-cloud.s3.amazonaws.com/workbench/Workbench-#{version}.dmg",
        verified: "https://shift-cloud.s3.amazonaws.com/workbench/"
  else
    sha256 "e60e10b77b35bf61e0ba87edc0ec76aca15913b8f746c714d3d2a3d4b9d73de1"

    url "https://shift-cloud.s3.amazonaws.com/workbench/Workbench-#{version}-arm64.dmg",
        verified: "https://shift-cloud.s3.amazonaws.com/workbench/"
  end

  name "Laravel Shift Workbench"
  desc "Upgrade and manage Laravel applications"
  homepage "https://laravelshift.com/workbench"

  livecheck do
    url "https://shift-cloud.s3.amazonaws.com/workbench/latest-mac.yml"
    strategy :electron_builder
  end

  app "Workbench.app"

  zap trash: [
    "~/Library/Application Support/Workbench",
    "~/Library/Preferences/com.laravelshift.workbench.plist",
    "~/Library/Saved Application State/com.laravelshift.workbench.savedState",
  ]
end

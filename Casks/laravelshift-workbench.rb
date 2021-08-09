cask "laravelshift-workbench" do
  version "0.5.1"

  if Hardware::CPU.intel?
    sha256 "1420919c7af099ffd7c3c1fb6b015e25ea6b8b6cd4616227cd0e7e7367f3d620"

    url "https://shift-cloud.s3.amazonaws.com/workbench/Workbench-#{version}.dmg",
        verified: "https://shift-cloud.s3.amazonaws.com/workbench/"
  else
    sha256 "65ea41cc06efb2ac71e447cd3422808d8019550e726f75e7c7ac09c91a250e0b"

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

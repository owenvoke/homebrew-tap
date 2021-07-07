cask "laravelshift-workbench" do
  version "0.3.1"

  if Hardware::CPU.intel?
    sha256 "b2b8fd7fe48f1a8e3ba00a449525e5e545ba334a2b52639fb3e020b1b198dee0"

    url "https://shift-cloud.s3.amazonaws.com/workbench/Workbench-#{version}.dmg",
        verified: "https://shift-cloud.s3.amazonaws.com/workbench/"
  else
    sha256 "d8a41a76030246ebf5c05082c647807013c0b9ef2eac0db99e71d2ccca0a55de"

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

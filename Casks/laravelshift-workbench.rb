cask "laravelshift-workbench" do
  version "0.6.3"

  if Hardware::CPU.intel?
    sha256 "5d1e3f01e6a058a3bfaae74feedcde3f647f8e87ef0126ec45e40e85c583e405"

    url "https://shift-cloud.s3.amazonaws.com/workbench/Workbench-#{version}.dmg",
        verified: "https://shift-cloud.s3.amazonaws.com/workbench/"
  else
    sha256 "11a00a0a2e8c71fe5b56882986d7a96aeedf343383f0639d63e8f0aba16579ac"

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

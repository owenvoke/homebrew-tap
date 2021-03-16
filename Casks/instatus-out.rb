cask "instatus-out" do
  version "1.0.7"
  sha256 "0d84d3f4583097c1f44ce40d9260165ecda40f15d93258c957f129ba6abf5e12"

  url "https://github.com/instatushq/out/releases/download/v#{version}/Instatus.Out-#{version}-mac.dmg",
      verified: "https://github.com/instatushq/out/"
  name "Instatus Out"
  desc "Monitor services in your menu bar"
  homepage "https://instatus.com/out"

  livecheck do
    url "https://github.com/instatushq/out"
    strategy :git
  end

  app "Instatus Out.app"

  zap trash: [
    "~/Library/Application Support/instatus-out",
    "~/Library/Preferences/com.instatus.out.plist",
    "~/Library/Saved Application State/com.instatus.out.savedState",
  ]
end

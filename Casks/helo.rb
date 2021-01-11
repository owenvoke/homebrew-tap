cask "helo" do
  version "1.3.0"
  sha256 "728d52ca3efee4cb94a0499a887c991028b29527ae8e6c007ffeb11e0fc381af"

  url "https://helo.fra1.digitaloceanspaces.com/helo/HELO-#{version}.dmg",
      verified: "helo.fra1.digitaloceanspaces.com/helo/"
  appcast "https://helo.fra1.digitaloceanspaces.com/helo/latest-mac.yml"
  name "HELO"
  desc "Swiss-army-knife of email testing and debugging"
  homepage "https://usehelo.com/"

  auto_updates true

  app "HELO.app"

  zap trash: [
    "~/Library/Application Support/HELO",
    "~/Library/Caches/de.beyondco.helo",
    "~/Library/Caches/de.beyondco.helo.ShipIt",
    "~/Library/Logs/HELO",
    "~/Library/Preferences/de.beyondco.helo.plist",
    "~/Library/Saved Application State/de.beyondco.helo.savedState",
  ]
end

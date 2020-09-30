cask "helo" do
  version "1.2.0"
  sha256 "4360b27704f4bed349dde7451288e7209093e17360f8377a1fe28f7dc380569b"

  # helo.fra1.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://helo.fra1.digitaloceanspaces.com/helo/HELO-#{version}.dmg"
  appcast "https://helo.fra1.digitaloceanspaces.com/helo/latest-mac.yml"
  name "HELO"
  desc "Swiss-army-knife of email testing and debugging"
  homepage "https://usehelo.com/"

  auto_updates true

  app "HELO.app"

  zap trash: [
    "~/Library/Application Support/HELO",
    "~/Library/Logs/HELO",
    "~/Library/Preferences/de.beyondco.helo.plist",
    "~/Library/Saved Application State/de.beyondco.helo.savedState",
  ]
end

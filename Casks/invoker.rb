cask "invoker" do
  version "2.0.0-RC8"
  sha256 "2d0cda3bf2e97518364c9d37c0152ecbe22a1697e605d84e435a7d662248d823"

  # invokerdev.fra1.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://invokerdev.fra1.digitaloceanspaces.com/invoker/Invoker-#{version}.dmg"
  appcast "https://invokerdev.fra1.digitaloceanspaces.com/invoker/latest-mac.yml"
  name "Invoker"
  desc "Is like an admin panel for all your Laravel applications"
  homepage "https://invoker.dev/"

  auto_updates true

  app "Invoker.app"

  zap trash: [
    "~/Library/Application Support/Invoker",
    "~/Library/Logs/Invoker",
    "~/Library/Preferences/de.beyondco.invoker.plist",
    "~/Library/Saved Application State/de.beyondco.invoker.savedState",
  ]
end

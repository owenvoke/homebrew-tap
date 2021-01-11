cask "invoker" do
  version "2.0.0-RC10"
  sha256 "3e2b811a10246556e436c7b82d37ae39675ee8598e506a2c7a844c830dc020d3"

  url "https://invokerdev.fra1.digitaloceanspaces.com/invoker/Invoker-#{version}.dmg",
      verified: "invokerdev.fra1.digitaloceanspaces.com/invoker/"
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

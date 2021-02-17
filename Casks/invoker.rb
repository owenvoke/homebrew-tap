cask "invoker" do
  version "2.2.0"
  sha256 "e649dcb6b65991c08d9cd9dac4cfff61e147113969279ed4c73b54bd3cf6483d"

  url "https://invokerdev.fra1.digitaloceanspaces.com/invoker/Invoker-#{version}.dmg",
      verified: "invokerdev.fra1.digitaloceanspaces.com/invoker/"
  name "Invoker"
  desc "Is like an admin panel for all your Laravel applications"
  homepage "https://invoker.dev/"

  livecheck do
    url "https://invokerdev.fra1.digitaloceanspaces.com/invoker/latest-mac.yml"
    strategy :page_match
    regex(/version:\s*(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "Invoker.app"

  zap trash: [
    "~/Library/Application Support/Invoker",
    "~/Library/Logs/Invoker",
    "~/Library/Preferences/de.beyondco.invoker.plist",
    "~/Library/Saved Application State/de.beyondco.invoker.savedState",
  ]
end

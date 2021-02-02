cask "invoker" do
  version "2.0.1"
  sha256 "77fe94b2380b8cbd0866e38584d61dcdee9ae28eaf1ee6c664a169776ed6b362"

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

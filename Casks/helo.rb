cask 'helo' do
  version '1.1.1'
  sha256 'b1fe270ed460685f5c6825a422c7dece61350fc470ce6577f13346236eb9d174'

  # helo.fra1.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://helo.fra1.digitaloceanspaces.com/helo/HELO-#{version}.dmg"
  appcast 'https://helo.fra1.digitaloceanspaces.com/helo/latest-mac.yml'
  name 'HELO'
  homepage 'https://usehelo.com/'

  auto_updates true

  app 'HELO.app'

  zap trash: [
               '~/Library/Application Support/HELO',
               '~/Library/Logs/HELO',
               '~/Library/Preferences/de.beyondco.helo.plist',
               '~/Library/Saved Application State/de.beyondco.helo.savedState',
             ]
end

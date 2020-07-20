cask 'helo' do
  version '1.1.3'
  sha256 'e010cb399480f53cd1342c5596b994bea6875b9e06c7c126290c35ea07718b6c'

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

cask 'invoker' do
  version '2.0.0'
  sha256 '30a5aa3071db7a1a55f60c6003f55eba429a9dc3270e426683b556e243f493c2'

  # invoker.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://invoker.ams3.digitaloceanspaces.com/invoker/Invoker-#{version}.dmg"
  appcast 'https://invoker.ams3.digitaloceanspaces.com/invoker/latest-mac.yml'
  name 'Invoker'
  desc 'Invoker is like an admin panel for all your Laravel applications.'
  homepage 'https://invoker.dev/'

  auto_updates true

  app 'Invoker.app'

  zap trash: [
               '~/Library/Application Support/Invoker',
               '~/Library/Logs/Invoker',
               '~/Library/Preferences/de.beyondco.invoker.plist',
               '~/Library/Saved Application State/de.beyondco.invoker.savedState',
             ]
end

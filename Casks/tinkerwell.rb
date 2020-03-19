cask 'tinkerwell' do
  version '2.5.0'
  sha256 'c95583ac468998628f0d9f06ed43813c8d8203c9e0f005b85603a33819830256'

  url "https://tinkerwell.app/download/electron/Tinkerwell-#{version}.dmg"
  name 'Tinkerwell'
  homepage 'https://tinkerwell.app'

  app 'Tinkerwell.app'
end
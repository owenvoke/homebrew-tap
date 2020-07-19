cask 'snapdownloader' do
  version '1.2.0'
  sha256 'cf5029c0ac09c75e375b0522b5e41f1ddbd885e92f02f402f627e4c14da37d2d'

  # github.com was verified as official when first introduced to the cask
  url "https://cdn.dlninja.com/software/SnapDownloader-#{version}-latest-release.dmg"
  appcast 'https://snapdownloader.com/changelog'
  name 'SnapDownloader'
  homepage 'https://snapdownloader.com/'

  app 'SnapDownloader.app'
end

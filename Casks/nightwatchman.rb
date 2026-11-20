cask "nightwatchman" do
  version "1.3"
  sha256 "e6b5c0d8444f3a222ff5578462e9a337b9b7b0b4d17aa6076703160a085bf0cb"

  url "https://github.com/knorthfield/nightwatchman/releases/download/v#{version}/Nightwatchman.zip"
  name "Night Watchman"
  desc "Keeps your Mac awake from the menu bar, also when the lid is closed"
  homepage "https://github.com/knorthfield/nightwatchman"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Night Watchman.app"

  zap delete: "/etc/sudoers.d/nightwatchman",
      trash:  "~/Library/Preferences/com.krisnorthfield.Nightwatchman.plist"
end

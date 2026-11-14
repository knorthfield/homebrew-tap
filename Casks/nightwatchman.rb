cask "nightwatchman" do
  version "1.2"
  sha256 "9c50922aa2f9f7477947885e29fe39c86eeba7856fca6de4a008bdd1ab63799d"

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

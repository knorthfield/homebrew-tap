cask "nightwatchman" do
  version "1.1"
  sha256 "39739a5f37fa8858465950faeeeace57406be66a60844f6f42d7cdc93355aeed"

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

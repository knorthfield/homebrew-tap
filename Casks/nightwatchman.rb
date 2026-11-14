cask "nightwatchman" do
  version "1.0"
  sha256 "82401ffdda13415c19094e71b1fdef2aa55926e22fb2e302dfd47f2aec76f359"

  url "https://github.com/knorthfield/nightwatchman/releases/download/v#{version}/Nightwatchman.zip"
  name "Nightwatchman"
  desc "Keeps your Mac awake from the menu bar, also when the lid is closed"
  homepage "https://github.com/knorthfield/nightwatchman"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Nightwatchman.app"

  zap delete: "/etc/sudoers.d/nightwatchman",
      trash:  "~/Library/Preferences/com.krisnorthfield.Nightwatchman.plist"
end

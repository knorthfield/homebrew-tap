cask "stenographer" do
  version "1.4.2"
  sha256 "aa7fc6954cbfcee79405dd1c9ba689bbeeadf32ef2c3c0293e5534d000b43447"

  url "https://github.com/knorthfield/stenographer/releases/download/v#{version}/Stenographer.zip"
  name "Stenographer"
  desc "Menu bar dictation: hold right Option, speak, release"
  homepage "https://github.com/knorthfield/stenographer"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Stenographer.app"

  # The speech model stays in ~/Library/Application Support/FluidAudio: other FluidAudio apps share it.
  zap trash: "~/Library/Preferences/com.krisnorthfield.Stenographer.plist"
end

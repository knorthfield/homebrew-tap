cask "stenographer" do
  version "1.1"
  sha256 "5bc64730cd8e9124326659be99a9107e5d79cf3c754370cc2e2a24d96155c0c9"

  url "https://github.com/knorthfield/stenographer/releases/download/v#{version}/Stenographer.zip"
  name "Stenographer"
  desc "Menu bar dictation: hold right Option, speak, release"
  homepage "https://github.com/knorthfield/stenographer"

  depends_on macos: :tahoe

  app "Stenographer.app"

  # The speech model stays in ~/Library/Application Support/FluidAudio: other FluidAudio apps share it.
  zap trash: "~/Library/Preferences/com.krisnorthfield.Stenographer.plist"
end

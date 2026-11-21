cask "stenographer" do
  version "1.6"
  sha256 "6acf8bf505e0706bd32da00f71f22d9af2ab804e8078d6668b4bc8bbc8f3de77"

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

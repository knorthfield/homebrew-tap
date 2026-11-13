cask "stenographer" do
  version "1.3"
  sha256 "fd178d0de657c553920ce8dea448c551fff7533a5914f71cca06ae04e8a24a47"

  url "https://github.com/knorthfield/stenographer/releases/download/v#{version}/Stenographer.zip"
  name "Stenographer"
  desc "Menu bar dictation: hold right Option, speak, release"
  homepage "https://github.com/knorthfield/stenographer"

  depends_on macos: :tahoe

  app "Stenographer.app"

  # The speech model stays in ~/Library/Application Support/FluidAudio: other FluidAudio apps share it.
  zap trash: "~/Library/Preferences/com.krisnorthfield.Stenographer.plist"
end

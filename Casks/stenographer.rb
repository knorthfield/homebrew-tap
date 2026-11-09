cask "stenographer" do
  version "1.0"
  sha256 "393ef9064fc83df247f9d1f8d80693a3f9bb3bc4bdf1665c0a32405e334294a9"

  url "https://github.com/knorthfield/stenographer/releases/download/v#{version}/Stenographer.zip"
  name "Stenographer"
  desc "Menu bar dictation: hold right Option, speak, release"
  homepage "https://github.com/knorthfield/stenographer"

  depends_on macos: ">= :tahoe"

  app "Stenographer.app"

  # The speech model stays in ~/Library/Application Support/FluidAudio: other FluidAudio apps share it.
  zap trash: "~/Library/Preferences/com.krisnorthfield.Stenographer.plist"
end

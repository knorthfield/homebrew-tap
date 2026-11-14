cask "napkin" do
  version "1.0"
  sha256 "91d877b6953e905c810f90478a6b804b41aa55172af04890e8d4206b3365afc6"

  url "https://github.com/knorthfield/napkin/releases/download/v#{version}/Napkin.zip"
  name "Napkin"
  desc "Calculator in a notepad: write calculations in numbers and words"
  homepage "https://github.com/knorthfield/napkin"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Napkin.app"

  # The notes in ~/Documents/Napkin are your files: they stay.
  zap trash: [
    "~/Library/Application Support/Napkin",
    "~/Library/Preferences/com.krisnorthfield.Napkin.plist",
  ]
end

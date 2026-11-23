cask "napkin" do
  version "1.2"
  sha256 "4db28d3d2df88b1c5aff38dc2db78416a0dcc45e4ee003ec34d80303ac6edb6a"

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

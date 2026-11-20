cask "napkin" do
  version "1.1"
  sha256 "0ec77b4ba5d9d4e8df400d41e2968ce30e5e7d06675bc54830249aee82e5bdc4"

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

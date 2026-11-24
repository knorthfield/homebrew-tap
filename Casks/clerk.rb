cask "clerk" do
  version "1.4"
  sha256 "e336b336cf4506639b835283b8ea148ae9dc01b95751450c31dde335d6871910"

  url "https://github.com/knorthfield/clerk/releases/download/v#{version}/Clerk.zip"
  name "Clerk"
  desc "Meeting note taker and coach with live transcript and talking points"
  homepage "https://github.com/knorthfield/clerk"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Clerk.app"

  # The speech and speaker models stay in ~/Library/Application Support/FluidAudio: other FluidAudio apps share them.
  # The meeting notes in ~/Documents/Clerk are your files: they stay.
  zap trash: [
    "~/Library/Application Support/Clerk",
    "~/Library/Preferences/com.krisnorthfield.Clerk.plist",
  ]
end

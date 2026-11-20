cask "clerk" do
  version "1.2"
  sha256 "5282f2a659444c0ab4311e8316ea9daab52bff58a649a5a8349364092833ca03"

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

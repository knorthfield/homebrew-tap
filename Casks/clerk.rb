cask "clerk" do
  version "1.3"
  sha256 "92b4578153cf4c21b263292b76d32a0abe91572d40d9188dc2703f0b129d1b4f"

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

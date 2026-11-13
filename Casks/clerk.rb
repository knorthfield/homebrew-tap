cask "clerk" do
  version "1.0"
  sha256 "419fc877a298966f8ff9dc5bbd4a19703154e2f479a4d3287db3bd5679003988"

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

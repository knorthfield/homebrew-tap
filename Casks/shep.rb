cask "shep" do
  version "0.22"
  sha256 "b917f527c5c2a6a4ebc1c273f8926db4c130cedf3fe3ca09d80e88caabc3a2f8"

  url "https://github.com/knorthfield/shep/releases/download/v#{version}/Shep.zip"
  name "Shep"
  desc "Terminals and coding agents of herdr-core: spaces, tabs and panes"
  homepage "https://github.com/knorthfield/shep"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Shep.app"

  # The terminals and the layout are in herdr-core: they stay.
  zap trash: [
    "~/Library/Preferences/com.krisnorthfield.Shep.plist",
  ]
end

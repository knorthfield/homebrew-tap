cask "shep" do
  version "0.9"
  sha256 "00f4cb78f1dd1f8f392d5b9f30b144ef9abee7998c1a5d4217966f9a510fbbdb"

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

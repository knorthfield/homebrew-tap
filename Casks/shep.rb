cask "shep" do
  version "0.17"
  sha256 "8d3cbf36661e25dc9bac442a0522549b51626b8b727f978d8d14ac11951c67ec"

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

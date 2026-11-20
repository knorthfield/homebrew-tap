cask "shep" do
  version "0.10"
  sha256 "5f722b3614822847d55acd874b6a5987a45c12b37fc729e06b601aede4c46679"

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

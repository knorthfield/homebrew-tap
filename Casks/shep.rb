cask "shep" do
  version "0.13"
  sha256 "8981f58d8ba2312ca29c1ad00ac7ee6af539b67f380d23f32857a0feb7734c8f"

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

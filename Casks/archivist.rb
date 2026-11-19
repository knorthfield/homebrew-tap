cask "archivist" do
  version "1.0"
  sha256 "5469595b755b09282c6230ccb0f5d008090597bbda7c7415264fb07acb51ffbc"

  url "https://github.com/knorthfield/archivist/releases/download/v#{version}/Archivist.zip"
  name "Archivist"
  desc "Clipboard history in a bar at the bottom of the screen"
  homepage "https://github.com/knorthfield/archivist"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Archivist.app"

  zap trash: [
    "~/Library/Application Support/Archivist",
    "~/Library/Preferences/com.krisnorthfield.Archivist.plist",
  ]
end

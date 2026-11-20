cask "archivist" do
  version "1.1.1"
  sha256 "bb69be70c5ba69a12ba6c03a88fa26897430e77e6e01fa51caad3f3b5945ed1c"

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

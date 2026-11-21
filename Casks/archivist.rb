cask "archivist" do
  version "1.3"
  sha256 "d7acdc342786d17fb528ef9269d7a8b451aa3ad812e504fe0613af0b46a4f939"

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

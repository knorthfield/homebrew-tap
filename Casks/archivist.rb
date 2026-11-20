cask "archivist" do
  version "1.1"
  sha256 "402ed891f865091bb0cc2495082528c3488fea89380be0b4ee83eb860399bd29"

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

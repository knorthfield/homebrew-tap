cask "archivist" do
  version "1.2"
  sha256 "3e3e36cba7a82e085a596f4281fe1f913de9bc87ff327f2661c869bd9a256aa1"

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

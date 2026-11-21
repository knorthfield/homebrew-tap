cask "housekeeper" do
  version "1.5.0"
  sha256 "eb71609cc820b3084710e84d2a30557dcfb0e71b808ebdb965b64c2574b83bbe"

  url "https://github.com/knorthfield/housekeeper/releases/download/v#{version}/Housekeeper.zip"
  name "Housekeeper"
  desc "File automation that watches folders and runs rules on new files"
  homepage "https://github.com/knorthfield/housekeeper"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Housekeeper.app"

  zap trash: "~/Library/Application Support/com.krisnorthfield.housekeeper"
end

cask "housekeeper" do
  version "1.1.0"
  sha256 "43c7b6dac51944c21b7a651a634506ecb49ba19460203811057c4086d3e3d8a6"

  url "https://github.com/knorthfield/housekeeper/releases/download/v#{version}/Housekeeper.zip"
  name "Housekeeper"
  desc "File automation that watches folders and runs rules on new files"
  homepage "https://github.com/knorthfield/housekeeper"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Housekeeper.app"

  zap trash: "~/Library/Application Support/com.krisnorthfield.housekeeper"
end

cask "housekeeper" do
  version "1.4.0"
  sha256 "65ec2b73ba587fa1f0188ce6435ff1cb34c8764dc9745313c0c6cd493541495e"

  url "https://github.com/knorthfield/housekeeper/releases/download/v#{version}/Housekeeper.zip"
  name "Housekeeper"
  desc "File automation that watches folders and runs rules on new files"
  homepage "https://github.com/knorthfield/housekeeper"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Housekeeper.app"

  zap trash: "~/Library/Application Support/com.krisnorthfield.housekeeper"
end

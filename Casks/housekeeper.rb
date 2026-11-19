cask "housekeeper" do
  version "1.0.1"
  sha256 "b4affb6a216e446b0c58a19cfab55cbe0bce4792c62de156b03ce70b4c6f259b"

  url "https://github.com/knorthfield/housekeeper/releases/download/v#{version}/Housekeeper.zip"
  name "Housekeeper"
  desc "File automation that watches folders and runs rules on new files"
  homepage "https://github.com/knorthfield/housekeeper"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Housekeeper.app"

  zap trash: "~/Library/Application Support/com.krisnorthfield.housekeeper"
end

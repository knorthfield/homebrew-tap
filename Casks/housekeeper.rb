cask "housekeeper" do
  version "1.2.0"
  sha256 "eeabd0ce66f5cd00855d69da6898ed58f1812bd4d2f75c10185684e4a475413c"

  url "https://github.com/knorthfield/housekeeper/releases/download/v#{version}/Housekeeper.zip"
  name "Housekeeper"
  desc "File automation that watches folders and runs rules on new files"
  homepage "https://github.com/knorthfield/housekeeper"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Housekeeper.app"

  zap trash: "~/Library/Application Support/com.krisnorthfield.housekeeper"
end

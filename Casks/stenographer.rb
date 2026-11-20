cask "stenographer" do
  version "1.4"
  sha256 "4b39ba3dc9eea56df837baf290ec4f85708fe293c0998bed3991e07a17ea018d"

  url "https://github.com/knorthfield/stenographer/releases/download/v#{version}/Stenographer.zip"
  name "Stenographer"
  desc "Menu bar dictation: hold right Option, speak, release"
  homepage "https://github.com/knorthfield/stenographer"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Stenographer.app"

  # The speech model stays in ~/Library/Application Support/FluidAudio: other FluidAudio apps share it.
  zap trash: "~/Library/Preferences/com.krisnorthfield.Stenographer.plist"
end

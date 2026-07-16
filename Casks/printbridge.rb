cask "printbridge" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "9975ff83f2c258ac6caa17d4d4f875936645243cb0839bd8e36825657011203e",
         intel: "6dd151678d616f605101e7816acde895a8d9a1b56851d33cbda3a8505250e766"

  url "https://github.com/vergil-lai/print-bridge/releases/download/printbridge-v#{version}/PrintBridge_#{version}_#{arch}.dmg",
      verified: "github.com/vergil-lai/print-bridge/"
  name "PrintBridge"
  desc "Local printing agent for trusted web applications"
  homepage "https://printbridge.pages.dev/"

  auto_updates true
  depends_on :macos

  app "PrintBridge.app"
  binary "#{appdir}/PrintBridge.app/Contents/MacOS/print-bridge"
end

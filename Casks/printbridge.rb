cask "printbridge" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "a3807e2a9171a3566d7ad653009bbc2a1fda55dd37c00582913ecffd7ad3aa8f",
         intel: "2c145dd46e7e0f6856e5ef5157bce8bd1d27b09da0019390493bcd887d2c3962"

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

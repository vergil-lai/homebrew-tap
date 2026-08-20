cask "printbridge" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.6"
  sha256 arm:   "7371437a5510147fa4a066daa31539bc93c9da2e6b494a02049c6914e9d1b2f9",
         intel: "5ac47399050ac7cf0e5cf84c8b5fdfe53c98c980a14a8f03e1efdcf16aa83a80"

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

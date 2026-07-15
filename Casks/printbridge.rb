cask "printbridge" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"

  sha256 arm:   "APPLE_SILICON_DMG_SHA256",
         intel: "INTEL_DMG_SHA256"

  url "https://github.com/vergil-lai/print-bridge/releases/download/printbridge-v#{version}/PrintBridge_#{version}_#{arch}.dmg"

  name "PrintBridge"
  desc "Local printing agent for trusted web applications"
  homepage "https://printbridge.pages.dev/"

  auto_updates true

  app "PrintBridge.app"

  binary "#{appdir}/PrintBridge.app/Contents/MacOS/print-bridge"
end

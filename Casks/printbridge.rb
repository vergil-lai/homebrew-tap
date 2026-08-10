cask "printbridge" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.5"
  sha256 arm:   "631b26221be3de584794cdca631b0db97f0cbb7739449e767cc3ebc4b2dcfcd1",
         intel: "a96539c80e14264e4d960860c6cc19d77e2b0558d95e7356d733ce56aded8881"

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

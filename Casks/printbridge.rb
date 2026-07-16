cask "printbridge" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "6b879e413e3592a301ea2e98ac16a50437a48654667b81aebf583e9149319ca3",
         intel: "ddc657d9c0c89948124596fbf3f0c7b6eef85d986e1ef6a6b48a5ee7c530a04e"

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

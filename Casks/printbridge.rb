cask "printbridge" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "d064118694589096568412011d1cd815ec1a8a9eed6fc0ee0597791b699b823b",
         intel: "86817398b851abc9604ce2b8399d24488da0b4bab04a0403e682a2b6c66f674a"

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

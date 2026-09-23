cask "promptops" do
  arch arm: "arm64", intel: "x64"

  version "2.0.33"
  sha256 arm:   "0b957d8a97bf8de0e0f44ef9967f5fb6d01bd6c47ee464267508c3dffca87f12",
         intel: "d2594f13c0d489987be08fc06c3bbb6b912df78fc75e2c7e92e34de2d90292f7"

  url "https://github.com/shellonback/promptops-releases/releases/download/v#{version}/PromptOps-Desktop-#{version}-#{arch}.dmg"
  name "PromptOps Desktop"
  desc "Desktop control plane for AI coding agents such as Claude Code and Codex"
  homepage "https://promptops.it/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "PromptOps Desktop.app"

  zap trash: [
    "~/Library/Application Support/it.promptops.desktop",
    "~/Library/Caches/it.promptops.desktop",
    "~/Library/Caches/it.promptops.desktop.ShipIt",
    "~/Library/HTTPStorages/it.promptops.desktop",
    "~/Library/Logs/it.promptops.desktop",
    "~/Library/Preferences/it.promptops.desktop.plist",
    "~/Library/Saved Application State/it.promptops.desktop.savedState",
    "~/Library/WebKit/it.promptops.desktop",
  ]
end

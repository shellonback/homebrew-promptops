cask "promptops" do
  arch arm: "arm64", intel: "x64"

  version "2.1.7"
  sha256 arm:   "cf5ab0948092c4a5d5c4620ccc15fcb6c0a38807b850acdfdc8ba80768caa48b",
         intel: "786721527ed7709fbbc0919a01a1c7efeb63c1a6429d202247de511ed24d732d"

  url "https://github.com/shellonback/promptops/releases/download/v#{version}/PromptOps-Desktop-#{version}-#{arch}.dmg"
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

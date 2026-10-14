cask "tock" do
  version "1.2.1"
  sha256 "218225cbdaabb94b17af5d9a9c6f68402d2e1d6a95bf780c70ca745da66f3195"

  url "https://github.com/lognseth/tock/releases/download/v#{version}/Tock-#{version}.dmg"
  name "Tock"
  desc "Keyboard-driven menu bar to-do list for markdown files"
  homepage "https://github.com/lognseth/tock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tock.app"

  zap trash: [
    "~/Library/Application Support/de.lognseth.tock",
    "~/Library/Caches/de.lognseth.tock",
    "~/Library/HTTPStorages/de.lognseth.tock",
    "~/Library/Preferences/com.local.tock.plist",
    "~/Library/Preferences/de.lognseth.tock.plist",
  ]
end

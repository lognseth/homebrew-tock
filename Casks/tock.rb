cask "tock" do
  version "1.3.0"
  sha256 "4ada512c9ce2f2ada71f5b941a72e356a54d49b839a9ceaf73bc7b6e25a71b12"

  url "https://github.com/lognseth/tock/releases/download/v#{version}/Tock-#{version}.dmg"
  name "Tock"
  desc "Keyboard-driven menu bar to-do list for markdown files"
  homepage "https://github.com/lognseth/tock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Tock.app"

  zap trash: [
    "~/Library/Application Support/de.lognseth.tock",
    "~/Library/Caches/de.lognseth.tock",
    "~/Library/HTTPStorages/de.lognseth.tock",
    "~/Library/Preferences/com.local.tock.plist",
    "~/Library/Preferences/de.lognseth.tock.plist",
  ]
end

cask "awesomux" do
  version "0.20.0"
  sha256 "8587605e2cde902da198f9f35cc94c5ac1c18b3765717ec02d535f184f8fbc95"

  url "https://github.com/Interactive-Buffoonery/awesomux/releases/download/v#{version}/awesoMux-#{version}.dmg"
  name "awesoMux"
  desc "Terminal built on libghostty with agent-aware sessions"
  homepage "https://github.com/Interactive-Buffoonery/awesomux"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "awesoMux.app"

  zap trash: [
    "~/.config/awesomux",
    "~/Library/Application Support/awesoMux",
    "~/Library/Preferences/com.interactivebuffoonery.awesomux.plist",
    "~/Library/Saved Application State/com.interactivebuffoonery.awesomux.savedState",
  ]
end

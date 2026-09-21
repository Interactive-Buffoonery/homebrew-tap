cask "awesomux" do
  version "0.19.0"
  sha256 "4af73c98e055049fac807f6d728f2e6b0725950f88f9d32372457190683707f4"

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

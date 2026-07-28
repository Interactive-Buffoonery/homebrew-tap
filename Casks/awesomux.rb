cask "awesomux" do
  version "0.11.0"
  sha256 "7565a639d0fff43fe510ed9d5b9ad918857a8641bcc6e7dfd7b3d676bf86c953"

  url "https://github.com/Interactive-Buffoonery/awesomux/releases/download/v#{version}/awesoMux-#{version}.dmg"
  name "awesoMux"
  desc "Terminal built on libghostty with agent-aware sessions"
  homepage "https://github.com/Interactive-Buffoonery/awesomux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "awesoMux.app"

  zap trash: [
    "~/.config/awesomux",
    "~/Library/Application Support/awesoMux",
    "~/Library/Preferences/com.interactivebuffoonery.awesomux.plist",
    "~/Library/Saved Application State/com.interactivebuffoonery.awesomux.savedState",
  ]
end

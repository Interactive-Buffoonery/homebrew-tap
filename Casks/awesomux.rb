cask "awesomux" do
  version "0.6.5"
  sha256 "635931c2649b9db2a12fdf92afcde84c490d1d8810f70da92bc0976dba2b46cd"

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

cask "awesomux" do
  version "0.1.0"
  sha256 "7bdc0965f2a526015d356806a44760272caa8b0f4624e7fb54ebdb7280d6235a"

  url "https://github.com/Interactive-Buffoonery/awesomux/releases/download/v#{version}/awesoMux-#{version}.zip"
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

cask "winset" do
  version "1.1.0"
  sha256 "ca346a33e824d7d3d335882f85cd0ba8a9c91b4e4ee4cad03db17b5030ee8a5f"
  
  url "https://github.com/farseenmanekhan1232/win-set/releases/download/v#{version}/WinSet-#{version}.zip"
  name "WinSet"
  desc "Vim-inspired window manager for macOS with auto-tiling"
  homepage "https://github.com/farseenmanekhan1232/win-set"
  
  app "WinSet.app"
  
  postflight do
    system_command "/usr/bin/defaults", args: ["write", "com.winset.app", "SUAutomaticallyUpdate", "-bool", "true"]
  end
  
  zap trash: [
    "~/.config/winset",
    "~/Library/Preferences/com.winset.app.plist",
  ]
end

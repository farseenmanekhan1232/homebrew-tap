cask "winset" do
  version "1.2.1"
  sha256 "0a8cb968bdd15bbf3bf58d6038c447052288c81b04d57c8b6a44a9b5f43214ec"
  
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

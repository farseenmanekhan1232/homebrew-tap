cask "winset" do
  version "1.2.0"
  sha256 "c1b307f49bdd1893777c9bf79ef5e551103c471bdadbd404f129072d41237d4d"
  
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

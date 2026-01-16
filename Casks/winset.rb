cask "winset" do
  version "1.1.1"
  sha256 "ef2bbb7833f79e3b0be3972e271ecc785cf97d53ea72a34c8d755aa0b463dd54"
  
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

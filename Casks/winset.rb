cask "winset" do
  version "1.2.2"
  sha256 "107af8087bcf994833fb120f7e2802cd24e779c5c09b76ea55707febe5be8c88"
  
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

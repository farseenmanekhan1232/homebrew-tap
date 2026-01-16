class Winset < Formula
  desc "Vim-inspired window manager for macOS with auto-tiling"
  homepage "https://github.com/farseenmanekhan1232/win-set"
  url "https://github.com/farseenmanekhan1232/win-set/releases/download/v1.0.4/winset-macos.zip"
  sha256 "b980a3603e86fd27fcb73def0c7ee0e39afa33a57445ceb8858ee8317ee63710"
  version "1.0.4"

  def install
    bin.install "winset"
  end

  service do
    run [opt_bin/"winset"]
    keep_alive true
    log_path var/"log/winset.log"
    error_log_path var/"log/winset.log"
  end

  def caveats
    <<~EOS
      To start winset:
        brew services start winset

      Make sure to grant Accessibility permissions in:
        System Settings → Privacy & Security → Accessibility
    EOS
  end
end

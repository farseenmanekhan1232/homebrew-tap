class Winset < Formula
  desc "Vim-inspired window manager for macOS with auto-tiling"
  homepage "https://github.com/farseenmanekhan1232/win-set"
  url "https://github.com/farseenmanekhan1232/win-set/releases/download/v1.0.2/winset-macos.zip"
  sha256 "f99ce388bbe0dbc49f9c1c5ca03f6c7a54b7e704ad1382fe69f8283cf7a26ea4"
  version "1.0.2"

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

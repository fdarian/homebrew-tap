cask "nisi" do
  version "0.6.1"
  sha256 "47cc0d3bd4909acd1ad3fca00a9424e3454a709121d066ca6476ef05af8fc246"

  url "https://github.com/fdarian/nisi/releases/download/v#{version}/nisi-macos-arm64.dmg"
  name "nisi"
  desc "A simpler way to review code"
  homepage "https://github.com/fdarian/nisi"

  depends_on arch: :arm64
  depends_on macos: :catalina

  app "nisi.app"
  binary "#{appdir}/nisi.app/Contents/MacOS/nisi-cli", target: "nisi"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/nisi.app"]
  end

  uninstall quit: "com.nisi.desktop"

  zap trash: [
    "~/Library/Application Support/com.nisi.desktop",
    "~/Library/Caches/com.nisi.desktop",
  ]
end

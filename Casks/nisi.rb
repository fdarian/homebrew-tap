cask "nisi" do
  version "0.3.2"
  sha256 "d15309725a1fa45be14e48229c2c00e928e7b20470514754590f183b6c70900b"

  url "https://github.com/fdarian/nisi/releases/download/v#{version}/nisi-macos-arm64.dmg"
  name "nisi"
  desc "A simpler way to review code"
  homepage "https://github.com/fdarian/nisi"

  depends_on arch: :arm64
  depends_on macos: ">= :catalina"

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

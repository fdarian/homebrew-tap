cask "nisi" do
  version "0.2.0"
  sha256 "8c97e8420cb4aa8e3ef75534e5b772578acfd964d2447d48f8f1c0de18f96b74"

  url "https://github.com/fdarian/nisi/releases/download/v#{version}/nisi-macos-arm64.dmg"
  name "nisi"
  desc "A simpler way to review code"
  homepage "https://github.com/fdarian/nisi"

  depends_on arch: :arm64
  depends_on macos: ">= :catalina"

  app "nisi.app"
  binary "#{appdir}/nisi.app/Contents/MacOS/nisi-cli", target: "nisi"

  zap trash: [
    "~/Library/Application Support/com.nisi.desktop",
    "~/Library/Caches/com.nisi.desktop",
  ]
end

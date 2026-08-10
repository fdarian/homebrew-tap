cask "nisi" do
  version "0.2.1"
  sha256 "0f35fd5e01e0a1336edb4185b726df14fac868c705cff039357fc064c23e99a3"

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

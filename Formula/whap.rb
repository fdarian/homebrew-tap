class Whap < Formula
  desc "CLI and mock server for testing WhatsApp integration"
  homepage "https://github.com/fdarian/whap"
  version "0.2.0"
  url "https://github.com/fdarian/whap/releases/download/v0.2.0/whap-darwin-x64.tar.gz"
  sha256 "ec4f1139292dd4a171aaf7ddba70c343378c55eb93b3d46cdacc916963f18f65"
  license "MIT"

  def install
    bin.install "whap"
  end

  test do
    system "#{bin}/whap", "--version"
  end
end

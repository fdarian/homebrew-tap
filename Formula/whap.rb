class Whap < Formula
  desc "CLI and mock server for testing WhatsApp integration"
  homepage "https://github.com/fdarian/whap"
  version "0.1.2"
  url "https://github.com/fdarian/whap/releases/download/v0.1.2/whap-darwin-x64.tar.gz"
  sha256 "ff68ea06d7e39b72744e0432099d728c44ec4fc09c559d856466e5f370bc70e0"
  license "MIT"

  def install
    bin.install "whap"
  end

  test do
    system "#{bin}/whap", "--version"
  end
end

class Whap < Formula
  desc "CLI and mock server for testing WhatsApp integration"
  homepage "https://github.com/fdarian/whap"
  version "0.2.1"
  url "https://github.com/fdarian/whap/releases/download/v0.2.1/whap-darwin-x64.tar.gz"
  sha256 "a2fef8d3cd41099766bc8d8da44f3f49efe516270f3974a7b92d8a63e3c8561f"
  license "MIT"

  def install
    bin.install "whap"
  end

  test do
    system "#{bin}/whap", "--version"
  end
end

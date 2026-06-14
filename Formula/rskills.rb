class Rskills < Formula
  desc "Read remote Anthropic-style skills without installing them"
  homepage "https://github.com/fdarian/rskills"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.1.1/rskills-darwin-arm64.tar.gz"
      sha256 "9c68b89990d091069cfd0dbdaff096d737921d6d5762e4abf1a9405bfb5f010a"
    else
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.1.1/rskills-darwin-x64.tar.gz"
      sha256 "87a041cbc11b7a9645b2e9eaa1c790b5be7f3d59d218ef13f21e325ca6d01803"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.1.1/rskills-linux-arm64.tar.gz"
      sha256 "12e4547783b772d268a0995e77d6b44cff3d6537e84aeb96071c53c16d4799de"
    else
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.1.1/rskills-linux-x64.tar.gz"
      sha256 "b14856e64d1de8bcad50290f12b6db678a8fa0be2924d69cdbee77e60fbac77d"
    end
  end

  def install
    bin.install "rskills"
  end

  test do
    system "#{bin}/rskills", "--help"
  end
end

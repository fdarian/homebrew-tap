class Rskills < Formula
  desc "Read remote Anthropic-style skills without installing them"
  homepage "https://github.com/fdarian/rskills"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.2.1/rskills-darwin-arm64.tar.gz"
      sha256 "95f76f224fbf86ea51d69ffa2ec0f17686fb2aa6728ca4a062f590a03cca6e81"
    else
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.2.1/rskills-darwin-x64.tar.gz"
      sha256 "f395a0b56f3b56bd6d1649e893e02a0028cccefed368bfb55a2e3f4f41f0beab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.2.1/rskills-linux-arm64.tar.gz"
      sha256 "e217fec58924a61ed3990ab585cba6e46587394800e083f076666dea17907f30"
    else
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.2.1/rskills-linux-x64.tar.gz"
      sha256 "f3b8e5a24d46f3b7a11e2ed7a2cecb0a3475132ec2bcbbc087297562e017620d"
    end
  end

  def install
    bin.install "rskills"
  end

  test do
    system "#{bin}/rskills", "--help"
  end
end

class Otheme < Formula
  desc "Apply shared themes across editor and terminal targets"
  homepage "https://otheme.fdarian.com"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.1/otheme-darwin-arm64.tar.gz"
      sha256 "a141d765b6c6e4103da0f089d2bde3ea0b0340d8d43a63b7b769e54a934b5674"
    else
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.1/otheme-darwin-x64.tar.gz"
      sha256 "0ed8df58265efcee6659c21adad87bbf6903aff3984b9fd6051f2762f07e5e9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.1/otheme-linux-arm64.tar.gz"
      sha256 "d7823ee17c3655dba91490144b6a8d3c1fa406f4ac7bccbb6981e6e91a8b0a7b"
    else
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.1/otheme-linux-x64.tar.gz"
      sha256 "bc8bfede66ce5110a1f93cc3a5304b4851f79eb74a4a136539efb8bc15be1dab"
    end
  end

  def install
    bin.install "otheme"
  end
end

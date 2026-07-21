class Otheme < Formula
  desc "Apply shared themes across editor and terminal targets"
  homepage "https://otheme.fdarian.com"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.0/otheme-darwin-arm64.tar.gz"
      sha256 "365342b4971503f19d2f037200f258e3693679a5acaadfa2c7f71c8c410c6d45"
    else
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.0/otheme-darwin-x64.tar.gz"
      sha256 "de00c66161abe20865294324110b1c8b4b24b65c882b905b66f1244eace62d9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.0/otheme-linux-arm64.tar.gz"
      sha256 "8fe867900d13c2d2d5c1cfee1a5ddb6455d91abb577945a819c29c5df37cbaaf"
    else
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.0/otheme-linux-x64.tar.gz"
      sha256 "edcaa22dea9d8c2a652a43d2c60d7e7aef06e9e44123889752bc8a71c10dfa08"
    end
  end

  def install
    bin.install "otheme"
  end
end

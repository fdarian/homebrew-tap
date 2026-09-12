class Otheme < Formula
  desc "Apply shared themes across editor and terminal targets"
  homepage "https://otheme.fdarian.com"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.3/otheme-darwin-arm64.tar.gz"
      sha256 "5e7ff66f52609db7251a979eaf9807ac5dd36f8706813420a728597a72c0f119"
    else
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.3/otheme-darwin-x64.tar.gz"
      sha256 "53b78062f3878d1622809c39c513646577bb548c32e7129ecbdafe3dc4a2515a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.3/otheme-linux-arm64.tar.gz"
      sha256 "b953d6a6f79e3911f1c9f36b92b1a670a2e7b6d7664fdee18f9ea684ae857bf2"
    else
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.3/otheme-linux-x64.tar.gz"
      sha256 "26b04e9f7a5a3abff84aa392aa7eece262fd8610861e12783565bac5c78a4103"
    end
  end

  def install
    bin.install "otheme"
  end
end

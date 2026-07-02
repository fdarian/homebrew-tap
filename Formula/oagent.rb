class Oagent < Formula
  desc "MCP server that exposes ACP-compatible coding agents"
  homepage "https://github.com/fdarian/oagent"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.1/oagent-darwin-arm64.tar.gz"
      sha256 "96bdcb234613b264ca52b086101bffef64b5d5238aa862f929dbcf5e3c119002"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.1/oagent-darwin-x64.tar.gz"
      sha256 "363ad553e0b9a210493f556d78679a4937729b7fc6ac99cc22e13fe56deaf5ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.1/oagent-linux-arm64.tar.gz"
      sha256 "d8808d0dc32fadef7a18addda14b11fc650367f19ff9eea88743ce36250e78a5"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.1/oagent-linux-x64.tar.gz"
      sha256 "011fd37d12ae5559087165c2a91575786db336be6c847274db06a392eb29096f"
    end
  end

  def install
    bin.install "oagent"
  end
end

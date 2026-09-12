class Oagent < Formula
  desc "MCP server that exposes ACP-compatible coding agents"
  homepage "https://github.com/fdarian/oagent"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.0/oagent-darwin-arm64.tar.gz"
      sha256 "893799d63cd15c93788d388e1a175f72cb9b2a3c5ef9c4c944207aae7b653232"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.0/oagent-darwin-x64.tar.gz"
      sha256 "e1e9a410f613a9bf263bb0eabcf0e7878c59983659d19ba8b02428b94bf3db58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.0/oagent-linux-arm64.tar.gz"
      sha256 "bd247a574469334c8880e38f712db428dc057e2abfc1609b8c38a928e464ab28"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.0/oagent-linux-x64.tar.gz"
      sha256 "3b03aa14bdd46dfc0603ae853c70b34ee28cefca689cf0fc1aa5372849950315"
    end
  end

  def install
    bin.install "oagent"
  end
end

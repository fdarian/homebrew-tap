class Oagent < Formula
  desc "MCP server that exposes ACP-compatible coding agents"
  homepage "https://github.com/fdarian/oagent"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.0/oagent-darwin-arm64.tar.gz"
      sha256 "4cd8290b8b7e26e8711bfd515e299f0c6d3a7e1fddb3804d28df9cee46ea7767"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.0/oagent-darwin-x64.tar.gz"
      sha256 "d51c89d8e84d00d215896bbd551f15629dcc1578a5545f2d2d86de4d0216b08c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.0/oagent-linux-arm64.tar.gz"
      sha256 "40a4096efcbd0ec6bb1131b385881ff91405b56365c7e721aa944dce773e7153"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.0/oagent-linux-x64.tar.gz"
      sha256 "811406ab081e89ce1e8b702f7e4d36ca81e366d2c85d0c9d9c25786c02384dc6"
    end
  end

  def install
    bin.install "oagent"
  end
end

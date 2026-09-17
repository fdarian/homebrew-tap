class Oagent < Formula
  desc "MCP server that exposes ACP-compatible coding agents"
  homepage "https://github.com/fdarian/oagent"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.2/oagent-darwin-arm64.tar.gz"
      sha256 "8ab55034523b8bd30390ad0f64f1a7dedc52b6138108a63dbf86027a86192d65"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.2/oagent-darwin-x64.tar.gz"
      sha256 "ea3c1637b2031a9db568dc2b79b325aa0c8981bd65ea9d68a6793a4383b2a506"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.2/oagent-linux-arm64.tar.gz"
      sha256 "6434d10be5c855671f7b2781fb6eb1bf43b86e57ab876b53379f7f453c47e6cf"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.2/oagent-linux-x64.tar.gz"
      sha256 "32affa5a4e8f6aa7a8f9fb5ac1b3a6b6ef186b8f5a281e6f2f6316a378d0479d"
    end
  end

  def install
    bin.install "oagent"
  end
end

class Oagent < Formula
  desc "MCP server that exposes ACP-compatible coding agents"
  homepage "https://github.com/fdarian/oagent"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.2/oagent-darwin-arm64.tar.gz"
      sha256 "274ab2e9ff61c544c0f8693bb997abc58cdefa56fb26e8fbc01077836d8d68e3"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.2/oagent-darwin-x64.tar.gz"
      sha256 "4d1f4efee13819f3dc6ddd15000b4c71373df951155dd532d63a15598be02674"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.2/oagent-linux-arm64.tar.gz"
      sha256 "1a7d79dc706f7b17b885aa05a28e2771d9e58e4d89e54cda277ee43e911d99ae"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.2.2/oagent-linux-x64.tar.gz"
      sha256 "26d9bb962c0c20154bc97cba177f58ae2d736c0b448f0b674ca45878220fd22d"
    end
  end

  def install
    bin.install "oagent"
  end
end

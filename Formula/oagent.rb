class Oagent < Formula
  desc "MCP server that exposes ACP-compatible coding agents"
  homepage "https://github.com/fdarian/oagent"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.1/oagent-darwin-arm64.tar.gz"
      sha256 "a855fa73bd65bbce42815d04fe11a46fa9b8cf412cc697e6a34bd3964340d928"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.1/oagent-darwin-x64.tar.gz"
      sha256 "00f43e574158405b4f7139205b2d46e13c91736216b0d930757a8c4593091705"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.1/oagent-linux-arm64.tar.gz"
      sha256 "a6b8692d59cd9fbd1d1c14d7fd53406cfbf43f84ad27fac1266a9b592149f8f1"
    else
      url "https://github.com/fdarian/oagent/releases/download/oagent%400.3.1/oagent-linux-x64.tar.gz"
      sha256 "04caaa524d981de1a3d46b3af37dc122f41e964c193f67fb4cbd9fdfb72cd04b"
    end
  end

  def install
    bin.install "oagent"
  end
end

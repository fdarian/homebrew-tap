class Traces < Formula
  desc "Read logs, deployments and traces from Vercel, Railway and Jaeger"
  homepage "https://github.com/fdarian/traces"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.1/traces-darwin-arm64.tar.gz"
      sha256 "7c0e3b1754db337d9fc42134098f1b1b8ed4c987c10ce7349b8d2ead216becc1"
    else
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.1/traces-darwin-x64.tar.gz"
      sha256 "0ed3a5c7ed4b9d3f18fc9cf50338d5c878d201beaa11fa0d1716802c2de0610d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.1/traces-linux-arm64.tar.gz"
      sha256 "ea7a6f89bdb4efd69a0297e7b698a6d49e594a0d9f7fce04097667e176836c12"
    else
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.1/traces-linux-x64.tar.gz"
      sha256 "e2f443dad84dd24f1c728e9dde8e74199ec1f6d70f41c04383ef7f8977dbf899"
    end
  end

  def install
    bin.install "traces"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/traces --version")
  end
end

class Traces < Formula
  desc "Read logs, deployments and traces from Vercel, Railway and Jaeger"
  homepage "https://github.com/fdarian/traces"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.0/traces-darwin-arm64.tar.gz"
      sha256 "1f81002505198ab4d7b94e5973faf58a018806d81d20125eaba0899b7adfdb4d"
    else
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.0/traces-darwin-x64.tar.gz"
      sha256 "97526b8c67aa97c333bee55aa2bec2d84ad187176e3183f4a277d66cc7c0b7f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.0/traces-linux-arm64.tar.gz"
      sha256 "7b1812c31343bb22de9ef513b053e51cfd6d84c22097cdbe97ed583581d4669b"
    else
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.0/traces-linux-x64.tar.gz"
      sha256 "542cc5f0be0e6c7a7ef5a95fab32de515656db3cdb7bc53644b06c29a09e6fb3"
    end
  end

  def install
    bin.install "traces"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/traces --version")
  end
end

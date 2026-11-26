class Traces < Formula
  desc "Read logs, deployments and traces from Vercel, Railway and Jaeger"
  homepage "https://github.com/fdarian/traces"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.2/traces-darwin-arm64.tar.gz"
      sha256 "2aa566003e294f3ec16476baac22ea40bbb48acc58281ee057bed1cf6a28423e"
    else
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.2/traces-darwin-x64.tar.gz"
      sha256 "0647ca3c94dacfe5cc6f78e3e94e6e6582d36b677558f6d9fbf108da98dd29cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.2/traces-linux-arm64.tar.gz"
      sha256 "6706144c3852d4773a1a64710cb1f93a8a818fe2cd54b629a2434ba9d893d36a"
    else
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.1.2/traces-linux-x64.tar.gz"
      sha256 "015b92432747a91ca7a0943c22b00df30d22d8ac0f53238eda8c0eab7a5e3fc4"
    end
  end

  def install
    bin.install "traces"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/traces --version")
  end
end

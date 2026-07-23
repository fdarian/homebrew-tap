class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.6/better-pm-darwin-arm64.tar.gz"
      sha256 "3160c82c45dc89ae37112ec88ad040b40dfb98487a77e12c668b0d343e0abcb7"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.6/better-pm-darwin-x64.tar.gz"
      sha256 "1e3f3c78dee946a5566435e9987d60f2f2ebd6057721a85bf7917e5edb149a46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.6/better-pm-linux-arm64.tar.gz"
      sha256 "53a612932534a65811c3bc6943135475c94730f3d4e6ac0266d9949c97d0d9b3"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.6/better-pm-linux-x64.tar.gz"
      sha256 "3e36d37f8066aeb2108e77e2c1762e7f89b8ff02d4c8f5ddee3cbc85cc051049"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

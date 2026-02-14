class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.2/better-pm-darwin-arm64.tar.gz"
      sha256 "ee2fb7e9f6c02aea3f3b6687ad749e653de9b565e461cda356cefd4e09587b2e"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.2/better-pm-darwin-x64.tar.gz"
      sha256 "28d23f950e5a0d4f8388082c394d761322b9d7d264680e80da429802ff3e7ad5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.2/better-pm-linux-arm64.tar.gz"
      sha256 "6b6c0c37d8adf433fdc6ffec678fe09e0046d1f1ce73c24ee3446abe2364b620"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.2/better-pm-linux-x64.tar.gz"
      sha256 "a11d352b3cf97b3191c4d9afa7348568f08dd5f20f6ba14c57f5c0c6c31466a6"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

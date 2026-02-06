class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.1.1/better-pm-darwin-arm64.tar.gz"
      sha256 "e3d3b4e8f56bbc185a2c20bc737dc39229ca1afd318ee7cdae5653b30127b3f6"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.1.1/better-pm-darwin-x64.tar.gz"
      sha256 "b48e559da1ae91dcdec41438ddc28892c196800767bbffe65db2c725e588c8c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.1.1/better-pm-linux-arm64.tar.gz"
      sha256 "60d73fcb9efef10c79a8e55fa14550fb67b74f1eff44e055fde1f77878ff88db"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.1.1/better-pm-linux-x64.tar.gz"
      sha256 "c199e32325362a20fc6b83ac812936fddfd19940197e32462d909e856eecaa0e"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

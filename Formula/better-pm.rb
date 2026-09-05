class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.4.0/better-pm-darwin-arm64.tar.gz"
      sha256 "bf57dbd2ae92a159a7a1a3d415ab1797c1b52f421d2fe61dbc27c349f7c1f4c7"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.4.0/better-pm-darwin-x64.tar.gz"
      sha256 "c284779c89eb5157190a2170f7a981ccf09e864384bc8dddb95c86ed15231031"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.4.0/better-pm-linux-arm64.tar.gz"
      sha256 "ad74d2fddb91ca1fba4458f0a092b16a5a8d6e6f03613f65f9fefa17d00b29e4"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.4.0/better-pm-linux-x64.tar.gz"
      sha256 "8d2d47e708e15d1d7d9dd57e64d24aba51667edd150443ad975ba95df4f31ae7"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

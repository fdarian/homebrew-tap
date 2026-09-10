class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.0/better-pm-darwin-arm64.tar.gz"
      sha256 "2ae05a0f03971d6e8847126160b272b61547e68e27800473beef2820444ee6b7"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.0/better-pm-darwin-x64.tar.gz"
      sha256 "0ecc91de3a178d8a0389268aec1f79f35185c89f08c6ab127de80048ff5cd748"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.0/better-pm-linux-arm64.tar.gz"
      sha256 "c68396f569fbb171ecab5631c9782f5aaf97e2e340945ce0ebdea78e9e54cb0a"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.0/better-pm-linux-x64.tar.gz"
      sha256 "c8cabd6426a83dcae365388bf6413afbf1a32279dcda5fddd72a288dd3e4f93c"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

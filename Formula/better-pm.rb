class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.3/better-pm-darwin-arm64.tar.gz"
      sha256 "c4b4065eb462715121b31f88565ce7dc0c877da64eaffc46309698592390ec05"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.3/better-pm-darwin-x64.tar.gz"
      sha256 "5fc0de9b2a93a3e5c9917319f885c27ff0aff1ef29bd00d9a57f38cd1c0f35ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.3/better-pm-linux-arm64.tar.gz"
      sha256 "40c1bedaf670b480e3519774b83b0839151fb96910c854724da1f825a20629ac"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.3/better-pm-linux-x64.tar.gz"
      sha256 "429f7e85c0eeac0a7ddcaff5edb25dde267dde784e3f733ee9a287c6867fe78d"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

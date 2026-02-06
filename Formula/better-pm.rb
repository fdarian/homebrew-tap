class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.2.1/better-pm-darwin-arm64.tar.gz"
      sha256 "342b13b5bf3945063877d22440edf294f247edd543c9da79a1ba74e9c524dc13"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.2.1/better-pm-darwin-x64.tar.gz"
      sha256 "8b2d7db5bf6b4d1a639e2506e30a5aaf3017c4a3f076838ec60a25b5b171c39b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.2.1/better-pm-linux-arm64.tar.gz"
      sha256 "f429903831c4bf34427765edda42395de487d86d2e6a344358fbe08b27d4f568"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.2.1/better-pm-linux-x64.tar.gz"
      sha256 "ffe9b174808ed6ecb49a587ea503e81934b861de880a14182871dcd9dfab9971"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

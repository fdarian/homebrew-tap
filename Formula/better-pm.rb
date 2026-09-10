class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.1/better-pm-darwin-arm64.tar.gz"
      sha256 "1310334a495435c89659301b37671a9ef2ff93615bc6e8fafb91dc08f1932511"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.1/better-pm-darwin-x64.tar.gz"
      sha256 "34fe633fc5e3897bbccd056f080c2a2d5ca8573443f94675874fa27b3e2f54c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.1/better-pm-linux-arm64.tar.gz"
      sha256 "61d66f77c77234d4836bd2ae464a06d0c3bc6b6a6ef9c62ef3e6bff8a7a6d885"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.1/better-pm-linux-x64.tar.gz"
      sha256 "91d1e11b658da0202e756bc89bcdcc09e7072c2ccd76fbf065865545c0c947a6"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

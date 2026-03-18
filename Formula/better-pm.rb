class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.4/better-pm-darwin-arm64.tar.gz"
      sha256 "ec3333f01eb087698c44c8d9b60c629728fa4f95da8f393b2a73a23da5a6612b"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.4/better-pm-darwin-x64.tar.gz"
      sha256 "2dcaebce3ccd4d3b30e3dd8a3b99d1e39658a8cc405be6ad2023a3878821637c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.4/better-pm-linux-arm64.tar.gz"
      sha256 "3a36a1bf68c594d11525ed008dccb8fe6fc5c59b56797d729738edba88e8f73e"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.4/better-pm-linux-x64.tar.gz"
      sha256 "eeef612ee2024833f4796d17a586cb7d2448d6e25566ae24437ab4e2f2859cab"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

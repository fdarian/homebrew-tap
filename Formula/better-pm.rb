class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.3/better-pm-darwin-arm64.tar.gz"
      sha256 "21602509179166c9ef5381d89a0dde7a425fbad10e96e3e05f617eeb224b5fa7"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.3/better-pm-darwin-x64.tar.gz"
      sha256 "519c794fb84c06957ccae2e37a96c972c80b4ad917cccb6b40b3bcb81dbdd2bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.3/better-pm-linux-arm64.tar.gz"
      sha256 "e053d96e55cf09b267c33174e897f3ce13e7a3a2bc97640c018ceae5c39564b3"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.3/better-pm-linux-x64.tar.gz"
      sha256 "6dd481359a732fced6605939c8b3baff24fe413be415d5abcafa21ec089d711b"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

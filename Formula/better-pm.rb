class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.5/better-pm-darwin-arm64.tar.gz"
      sha256 "9eeabf02d7c77b5a54990450469fe4cb6206e383433e50add9aba53200ad14de"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.5/better-pm-darwin-x64.tar.gz"
      sha256 "8367625d6f9dc0c3f90c9e107588a3ae2efea784a20e009e1b468ad4c2b4c895"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.5/better-pm-linux-arm64.tar.gz"
      sha256 "08e9a99e2f1cb207e4703f4522f05db274ec29253c4355fb55a3405d9ba809c1"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.5/better-pm-linux-x64.tar.gz"
      sha256 "6c83866ce9b5bba8f00d33ec8ab42805fc4d6fddff118a3a8514fec530e13243"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

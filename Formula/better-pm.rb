class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.1.0/better-pm-darwin-arm64.tar.gz"
      sha256 "5b997973757963899812b94a01baeb8d577d954d46a8c55c927ca3deff0b0d84"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.1.0/better-pm-darwin-x64.tar.gz"
      sha256 "b4f2198039ea8905dfe8fac4ddc4f4cec0b21ed53d2df305c4a68a0bed685c75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.1.0/better-pm-linux-arm64.tar.gz"
      sha256 "26192c2c30a5159d75f1610cdc3d8f427dae9700518ed6cc658f9d63edda9c1e"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.1.0/better-pm-linux-x64.tar.gz"
      sha256 "0a568647e69a5edcb8d8ea5fd08b87bbe5da75981835e042f5607dd37857ed3c"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

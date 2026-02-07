class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.0/better-pm-darwin-arm64.tar.gz"
      sha256 "5805ea58ceb0e423c576fc4a94bee19c31b933add516873fd156be8bf592f53d"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.0/better-pm-darwin-x64.tar.gz"
      sha256 "030d929e377ee4f15a50e5d34fd5add819652f8f3ec2cbb62d892d64b1a5150d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.0/better-pm-linux-arm64.tar.gz"
      sha256 "dbf73375a7d9d76a4295e1a876e1e7ef8e3365042167e10350d8ee197f1094ca"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.0/better-pm-linux-x64.tar.gz"
      sha256 "8dd9e87926de7717b799b235e3363bdde6e0ced6aae2bc1ed5acdbdf9f1603cc"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

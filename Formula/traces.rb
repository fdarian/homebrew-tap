class Traces < Formula
  desc "Read logs, deployments and traces from Vercel, Railway and Jaeger"
  homepage "https://github.com/fdarian/traces"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.0.0/traces-darwin-arm64.tar.gz"
      sha256 "4a704898df056663bb7b9eddce5da4d9114e9aa11bcdea200cd60b47cba4ab5c"
    else
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.0.0/traces-darwin-x64.tar.gz"
      sha256 "bcd1c113b564f437e1198eaa4bf0a4bddcc00b1cf374d3346e1b847a60fc97b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.0.0/traces-linux-arm64.tar.gz"
      sha256 "ec3ec2549d5e9063702145e1fb2577ad51502905b30bca133b9bff4030088ae3"
    else
      url "https://github.com/fdarian/traces/releases/download/%40traces%2Fcli%400.0.0/traces-linux-x64.tar.gz"
      sha256 "1076fb7246f6f0c8044d858f38dc54ff0d4cef816e2e6a3917e208cd71512fc4"
    end
  end

  def install
    bin.install "traces"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/traces --version")
  end
end

class Rskills < Formula
  desc "Read remote Anthropic-style skills without installing them"
  homepage "https://github.com/fdarian/rskills"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.3.0/rskills-darwin-arm64.tar.gz"
      sha256 "5dd3a3c6e2460503bc737246437337a65c68b54d37a85eec1b55d18648fbe003"
    else
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.3.0/rskills-darwin-x64.tar.gz"
      sha256 "4272daee9a054470a5863a0d42dae72fc77ccad76db7aad36babfffe1a3faa31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.3.0/rskills-linux-arm64.tar.gz"
      sha256 "ade7cd494d742b1c23533236e91c1ef4dfa8ed263b359050971cf28f5777bcb0"
    else
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.3.0/rskills-linux-x64.tar.gz"
      sha256 "2d3a82d6cc54a0340f45ed324da61b4e1806efaa5fa340b4682705a67f6828f6"
    end
  end

  def install
    bin.install "rskills"
  end

  test do
    system "#{bin}/rskills", "--help"
  end
end

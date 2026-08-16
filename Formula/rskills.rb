class Rskills < Formula
  desc "Read remote Anthropic-style skills without installing them"
  homepage "https://github.com/fdarian/rskills"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.2.0/rskills-darwin-arm64.tar.gz"
      sha256 "cbe027e6d255122acd7c310ff74527b63eb23a7032da78744ac46598437323cf"
    else
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.2.0/rskills-darwin-x64.tar.gz"
      sha256 "02f3821cf62df4b2df2898d83368959ca705c919523a6cebb852213d7a4dc5bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.2.0/rskills-linux-arm64.tar.gz"
      sha256 "3337c2b006d5a22bddcf53a7f2d0d7cfd012c4e6b4b1d9cd78b0b1abacd5925e"
    else
      url "https://github.com/fdarian/rskills/releases/download/rskills-cli%400.2.0/rskills-linux-x64.tar.gz"
      sha256 "68f221b1a0af41fe8bd24315243a350dc63bbcbaa23b6f94a0e887107746982c"
    end
  end

  def install
    bin.install "rskills"
  end

  test do
    system "#{bin}/rskills", "--help"
  end
end

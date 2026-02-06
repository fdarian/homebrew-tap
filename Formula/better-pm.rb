class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.2.0/better-pm-darwin-arm64.tar.gz"
      sha256 "e0a581557b2c69c9e41602ac4bdfda62e087dcb8b6dc0d0be80489f1b952f2d2"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.2.0/better-pm-darwin-x64.tar.gz"
      sha256 "50ab1ff61975d2b82925072a7bf5eb3b7e9a84e516621eb1d3fa9d7fdc5304e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.2.0/better-pm-linux-arm64.tar.gz"
      sha256 "9f6bcfad19b7989ec2aa419aa823c818061c4876ce199512029739cba06020b9"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.2.0/better-pm-linux-x64.tar.gz"
      sha256 "f6c07e6a79b0d60c3332441341940d5fec182187ddd2965f503cdb15bb8a8b46"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

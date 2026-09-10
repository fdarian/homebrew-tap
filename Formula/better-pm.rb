class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.2/better-pm-darwin-arm64.tar.gz"
      sha256 "69168ea46e070457a0a7d2b2ff3425a233b3596f7088ac60845839792fb9478f"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.2/better-pm-darwin-x64.tar.gz"
      sha256 "b7268630571336b4f6d93dcc7f9d37c4bc827ceecbc79a30d87fcbe4b7bc5237"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.2/better-pm-linux-arm64.tar.gz"
      sha256 "b1f36471f0e610980aff3f94a4c2289e009c2c5b00259dd4965830173f32afb5"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.5.2/better-pm-linux-x64.tar.gz"
      sha256 "407c500df3f58f171ebe900faeef60425c6f90e105041f56bb87c8e3dea25639"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

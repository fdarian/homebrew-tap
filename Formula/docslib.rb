class Docslib < Formula
  desc "CLI tool to query documentation registry"
  homepage "https://github.com/fdarian/docslib"
  version "0.2.0"
  license "MIT"

  on_arm do
    url "https://github.com/fdarian/docslib/releases/download/%40docslib%2Fcli%400.2.0/docslib-darwin-arm64.tar.gz"
    sha256 "8d428141b86e396e59a2e5bb4565c1eb1f1378de847a4522543b908d8283c2e6"
  end

  on_intel do
    url "https://github.com/fdarian/docslib/releases/download/%40docslib%2Fcli%400.2.0/docslib-darwin-x64.tar.gz"
    sha256 "53d936748794a19833b69bdb3e72329403e1ba20f91ab58023b3f7e4de67857c"
  end

  def install
    bin.install Dir["*"].first => "docslib"
  end

  test do
    system "#{bin}/docslib", "--help"
  end
end

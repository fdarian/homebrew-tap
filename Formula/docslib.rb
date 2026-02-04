class Docslib < Formula
  desc "CLI tool to query documentation registry"
  homepage "https://github.com/fdarian/docslib"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/docslib/releases/download/%40docslib%2Fcli%400.2.2/docslib-darwin-arm64.tar.gz"
      sha256 "fe65ddf10c9adb3b68f6a098b055286ff093ec917d9a29cd148fa50e34f4ce84"
    end
    on_intel do
      url "https://github.com/fdarian/docslib/releases/download/%40docslib%2Fcli%400.2.2/docslib-darwin-x64.tar.gz"
      sha256 "bf27737415765797738c5c7234d0c4aa06e179e91baeacf65224e542e8d1c0e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/docslib/releases/download/%40docslib%2Fcli%400.2.2/docslib-linux-arm64.tar.gz"
      sha256 "bce88c6579e97fcfb40f99c2756056e055a23f4c3f06b99cf1c536617cbd977c"
    end
    on_intel do
      url "https://github.com/fdarian/docslib/releases/download/%40docslib%2Fcli%400.2.2/docslib-linux-x64.tar.gz"
      sha256 "edca5214c64944337a27c03caa4fdebeb675bc0eb9acad91e73fe12f7a1c46bb"
    end
  end

  def install
    bin.install Dir["*"].first => "docslib"
  end

  test do
    system "#{bin}/docslib", "--help"
  end
end

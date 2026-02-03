class Docslib < Formula
  desc "CLI tool to query documentation registry"
  homepage "https://github.com/fdarian/docslib"
  version "0.2.1"
  license "MIT"

  on_arm do
    url "https://github.com/fdarian/docslib/releases/download/%40docslib%2Fcli%400.2.1/docslib-darwin-arm64.tar.gz"
    sha256 "a280386aa397675481e72e15d6d3428be7008cec5dc69cac1942a574ccc4770f"
  end

  on_intel do
    url "https://github.com/fdarian/docslib/releases/download/%40docslib%2Fcli%400.2.1/docslib-darwin-x64.tar.gz"
    sha256 "314ea81c198cfc6f92f6053cb707566b32a2752c005deb21e4c5d8ff71241f10"
  end

  def install
    bin.install Dir["*"].first => "docslib"
  end

  test do
    system "#{bin}/docslib", "--help"
  end
end

class Docslib < Formula
  desc "CLI tool to query documentation registry"
  homepage "https://github.com/fdarian/docslib"
  version "0.1.1"
  license "MIT"

  on_arm do
    url "https://github.com/fdarian/docslib/releases/download/%40docslib%2Fcli%400.1.1/docslib-darwin-arm64.tar.gz"
    sha256 "1b2fbc267e2cba6247a7ae7196af6faaf7ddfa46cc5ac01f5c7dccd0ce641f06"
  end

  on_intel do
    url "https://github.com/fdarian/docslib/releases/download/%40docslib%2Fcli%400.1.1/docslib-darwin-x64.tar.gz"
    sha256 "95f2d52804284a4cefd438cd5998a6b235919293f0f26c78b4aae063756836dc"
  end

  def install
    bin.install Dir["*"].first => "docslib"
  end

  test do
    system "#{bin}/docslib", "--help"
  end
end

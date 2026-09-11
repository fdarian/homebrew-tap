class Otheme < Formula
  desc "Apply shared themes across editor and terminal targets"
  homepage "https://otheme.fdarian.com"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.2/otheme-darwin-arm64.tar.gz"
      sha256 "5d495c04f9041d6ffba6322aab6c9fce1e5ccd3ee8cda201a2e5895a2e78221f"
    else
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.2/otheme-darwin-x64.tar.gz"
      sha256 "1ee4d61b3aaee6e5c2162b94c0e4dbcb28333d577f4dfa1155694d391412c16f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.2/otheme-linux-arm64.tar.gz"
      sha256 "0d3d3c6edbcac3294594faf50830ffe549f0d7309d138f2dd385232c70d37cf5"
    else
      url "https://github.com/fdarian/otheme/releases/download/otheme%400.2.2/otheme-linux-x64.tar.gz"
      sha256 "a877a0ea8757415d716091c861e459d164f80d98cb82c1171a836155c20f43af"
    end
  end

  def install
    bin.install "otheme"
  end
end

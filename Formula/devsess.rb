class Devsess < Formula
  desc "Run named groups of dev services from a background daemon"
  homepage "https://devsess.fdarian.com"
  version "0.1.0"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/fdarian/devsess/releases/download/%40devsess%2Fcli%400.1.0/devsess-darwin-arm64.tar.gz"
    sha256 "7215884957bef25a64b263e17e1e97ac432eb969d984d953fe3ac4c183b54590"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/devsess/releases/download/%40devsess%2Fcli%400.1.0/devsess-linux-arm64.tar.gz"
      sha256 "338a8e2b5821e6b1fe04aab487bcdc53facab4ac37d0135a451c0dfa68117382"
    else
      url "https://github.com/fdarian/devsess/releases/download/%40devsess%2Fcli%400.1.0/devsess-linux-x64.tar.gz"
      sha256 "61df70bc0be92af03971850b1acb71cf129959cb7f5aad8bbeba895550ece215"
    end
  end

  def install
    bin.install "devsess"
  end

  def caveats
    <<~EOS
      After upgrading, run `devsess daemon restart` so the background daemon
      (and on macOS its launchd job) uses the new binary.
    EOS
  end
end

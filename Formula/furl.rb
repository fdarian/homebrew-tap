class Furl < Formula
  desc "Fetch a URL and return LLM-optimized markdown"
  homepage "https://github.com/fdarian/furl"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/furl/releases/download/furl-cli%400.2.0/furl-darwin-arm64.tar.gz"
      sha256 "fbb067c01f7aa48683630037a5622149339cb14d961d5fcd20c50e763065c462"
    else
      url "https://github.com/fdarian/furl/releases/download/furl-cli%400.2.0/furl-darwin-x64.tar.gz"
      sha256 "78984d093572655e16d52c430a1fe315e8dc260f25896f0a7830f62631b201fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/furl/releases/download/furl-cli%400.2.0/furl-linux-arm64.tar.gz"
      sha256 "12d5c30f5a0e906ad4939bb2ed0e7eccd130e1724f91cffdd3aa2a5984629ff8"
    else
      url "https://github.com/fdarian/furl/releases/download/furl-cli%400.2.0/furl-linux-x64.tar.gz"
      sha256 "875ba6b90dd724a4104521b4b8cf14e587d9f1549bec02cb5c0cf9cd6032f8b2"
    end
  end

  def install
    bin.install "furl"
  end
end

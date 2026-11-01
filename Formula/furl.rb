class Furl < Formula
  desc "Fetch a URL and return LLM-optimized markdown"
  homepage "https://github.com/fdarian/furl"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/furl/releases/download/furl-cli%400.3.0/furl-darwin-arm64.tar.gz"
      sha256 "5237b6a5e520480a12891580e1a00f83434e2c5ea50fbb0a87b96d3ab3363686"
    else
      url "https://github.com/fdarian/furl/releases/download/furl-cli%400.3.0/furl-darwin-x64.tar.gz"
      sha256 "053fd0f3bff4d90d122a72e787f053898aea28b24468a8318002ded8cfd78b08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fdarian/furl/releases/download/furl-cli%400.3.0/furl-linux-arm64.tar.gz"
      sha256 "284b6ed22300890f9b0671e3f40bdbeb91d6f0493d43378096e646bf49e39414"
    else
      url "https://github.com/fdarian/furl/releases/download/furl-cli%400.3.0/furl-linux-x64.tar.gz"
      sha256 "1691cb74c2630b462b2d290cf81021c991b9dcef568cc3663fa28b97053b0de2"
    end
  end

  def install
    bin.install "furl"
  end
end

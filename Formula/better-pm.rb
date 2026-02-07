class BetterPm < Formula
  desc "CLI for package manager operations in monorepos"
  homepage "https://github.com/fdarian/better-pm"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.1/better-pm-darwin-arm64.tar.gz"
      sha256 "9e7cea795aa9a9ba7e3cf9dbeec4e9b64586f1a83fa3821df99e74b93d737877"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.1/better-pm-darwin-x64.tar.gz"
      sha256 "1337d357155ad0593866518c3501b97c8e2bfdfa99abb87ea09b584ed3f40706"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.1/better-pm-linux-arm64.tar.gz"
      sha256 "42af672470ff1fd1f6d52367ba02dafb510507c99072cce98114afb27e62f7a4"
    end
    on_intel do
      url "https://github.com/fdarian/better-pm/releases/download/better-pm%400.3.1/better-pm-linux-x64.tar.gz"
      sha256 "18a1ec25aee2b96fc95be91011f03bfc8cb76ca648f16cdd584f53684683dd23"
    end
  end

  def install
    bin.install Dir["*"].first => "pm"
  end

  test do
    system "#{bin}/pm", "--help"
  end
end

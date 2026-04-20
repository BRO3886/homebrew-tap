class Healthsync < Formula
  desc "Parse Apple Health exports into a local SQLite database for AI agents and CLI queries"
  homepage "https://github.com/BRO3886/healthsync"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.2/healthsync-darwin-arm64.tar.gz"
      sha256 "a891e74b484abd0f94dfb014c4b2424f4d06731ec61b7073fe6899ddda511013"
    end

    on_intel do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.2/healthsync-darwin-amd64.tar.gz"
      sha256 "f5941c432496d54564489ac5793d9704173a6c99d94fcf46d8517d8fde6815ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.2/healthsync-linux-arm64.tar.gz"
      sha256 "aa8d1e169daa8d57e74806bb606e1b25de2cb569962b4a277b8d397c7493e8e5"
    end

    on_intel do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.2/healthsync-linux-amd64.tar.gz"
      sha256 "04577cfb44440a5b0213463db6362a05148dfd0be8f6bb2e6ef264fd7222845f"
    end
  end

  def install
    bin.install "healthsync"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/healthsync version")
  end
end

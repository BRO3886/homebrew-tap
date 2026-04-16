class Healthsync < Formula
  desc "Parse Apple Health exports into a local SQLite database for AI agents and CLI queries"
  homepage "https://github.com/BRO3886/healthsync"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.1/healthsync-darwin-arm64.tar.gz"
      sha256 "ee75a54a399c301b048c7a21776b940adfb886548091948fd5880ec325468ef5"
    end

    on_intel do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.1/healthsync-darwin-amd64.tar.gz"
      sha256 "51500db5a56abda9875b78164c68dc1d9780b3c656760e8d6cc1b93c53217935"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.1/healthsync-linux-arm64.tar.gz"
    end

    on_intel do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.1/healthsync-linux-amd64.tar.gz"
    end
  end

  def install
    bin.install "healthsync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/healthsync version")
  end
end

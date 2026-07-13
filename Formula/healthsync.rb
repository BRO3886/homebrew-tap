class Healthsync < Formula
  desc "Parse Apple Health exports into a local SQLite database for AI agents and CLI queries"
  homepage "https://github.com/BRO3886/healthsync"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.3/healthsync-darwin-arm64.tar.gz"
      sha256 "c35604c23da16c82f8e987837f4c34d7c43c671bc5c18752ee4d8d49adfc6e73"
    end

    on_intel do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.3/healthsync-darwin-amd64.tar.gz"
      sha256 "2c9ec5e636e54f71eaceea57f6b85a051398804454126718092166b0553cce9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.3/healthsync-linux-arm64.tar.gz"
      sha256 "4628298539e208c302fe12bbddf2e19e8bb733732a2b2befe9e412914dbf9751"
    end

    on_intel do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.3/healthsync-linux-amd64.tar.gz"
      sha256 "62c0dad606166ffdd0b8290ece968f064e3a8b3a8750da437d8bb71942c007f4"
    end
  end

  def install
    bin.install "healthsync"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/healthsync version")
  end
end

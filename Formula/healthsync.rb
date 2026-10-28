class Healthsync < Formula
  desc "Parse Apple Health exports into a local SQLite database for AI agents and CLI queries"
  homepage "https://github.com/BRO3886/healthsync"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.4/healthsync-darwin-arm64.tar.gz"
      sha256 "8ada9ab565fd53fc629e951dd97f92e5575b1c40a79fbd4b67828e2ab77f6005"
    end

    on_intel do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.4/healthsync-darwin-amd64.tar.gz"
      sha256 "bcddbb806cd4ec399d6a29f6aa3b4905a95f7038a6ca4c0807f028c53d354ef9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.4/healthsync-linux-arm64.tar.gz"
      sha256 "8afaf3850b68ec37d5a777561d917004bd279e03dc6bf370d833025d40273a12"
    end

    on_intel do
      url "https://github.com/BRO3886/healthsync/releases/download/v0.5.4/healthsync-linux-amd64.tar.gz"
      sha256 "7a3d5203f02bab22cb97bf5d9f32a0651af7424b3959b59b120847298491b695"
    end
  end

  def install
    bin.install "healthsync"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/healthsync version")
  end
end

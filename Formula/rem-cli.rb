class RemCli < Formula
  desc "Blazing fast CLI for macOS Reminders — sub-200ms reads and writes via EventKit"
  homepage "https://github.com/BRO3886/rem"
  version "0.12.1"
  license "MIT"

  depends_on :macos
  conflicts_with "rem", because: "both install a \`rem\` binary"

  on_arm do
    url "https://github.com/BRO3886/rem/releases/download/v0.12.1/rem-darwin-arm64.tar.gz"
    sha256 "71a656d8b5e67bda670c4f95d47d8f4cc8ae3127b369d43af33b0d2627b2be68"
  end

  on_intel do
    url "https://github.com/BRO3886/rem/releases/download/v0.12.1/rem-darwin-amd64.tar.gz"
    sha256 "e1b63d498db8dbb15b80f32b29acc980c28240245f21240d97359d47d334967f"
  end

  def install
    bin.install "rem"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/rem version")
  end
end

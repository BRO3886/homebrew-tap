class RemCli < Formula
  desc "Blazing fast CLI for macOS Reminders — sub-200ms reads and writes via EventKit"
  homepage "https://github.com/BRO3886/rem"
  version "0.12.0"
  license "MIT"

  depends_on :macos
  conflicts_with "rem", because: "both install a \`rem\` binary"

  on_arm do
    url "https://github.com/BRO3886/rem/releases/download/v0.12.0/rem-darwin-arm64.tar.gz"
    sha256 "9f6b82751f270d4e8bd0c4d30307c91d6d40bd3b362e4d84ce58f4247d8904df"
  end

  on_intel do
    url "https://github.com/BRO3886/rem/releases/download/v0.12.0/rem-darwin-amd64.tar.gz"
    sha256 "da91ca743c7a3652bfe43f573f85d6144482ec43fd41471b07a01b2cc87f895a"
  end

  def install
    bin.install "rem"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/rem version")
  end
end

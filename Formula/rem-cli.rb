class RemCli < Formula
  desc "Blazing fast CLI for macOS Reminders — sub-200ms reads and writes via EventKit"
  homepage "https://github.com/BRO3886/rem"
  version "0.11.0"
  license "MIT"

  depends_on :macos
  conflicts_with "rem", because: "both install a \`rem\` binary"

  on_arm do
    url "https://github.com/BRO3886/rem/releases/download/v0.11.0/rem-darwin-arm64.tar.gz"
    sha256 "a71a95278514e638a376019a42299a5daf572efb2d7bf15d681ce85b3c3c011c"
  end

  on_intel do
    url "https://github.com/BRO3886/rem/releases/download/v0.11.0/rem-darwin-amd64.tar.gz"
    sha256 "435fa09d2ad611a9bd67edf0defb0ebb7c186c5abe66064ddd4c234d5d999fd8"
  end

  def install
    bin.install "rem"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/rem version")
  end
end

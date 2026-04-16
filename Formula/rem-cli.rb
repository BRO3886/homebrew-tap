class RemCli < Formula
  desc "Blazing fast CLI for macOS Reminders — sub-200ms reads and writes via EventKit"
  homepage "https://github.com/BRO3886/rem"
  version "0.10.1"
  license "MIT"

  depends_on :macos
  conflicts_with "rem", because: "both install a `rem` binary"

  on_arm do
    url "https://github.com/BRO3886/rem/releases/download/v0.10.1/rem-darwin-arm64.tar.gz"
    sha256 "9057a75c4feeb152ea7ada616373d40e6e71b0ac59621487ceded742a5e15a36"
  end

  on_intel do
    url "https://github.com/BRO3886/rem/releases/download/v0.10.1/rem-darwin-amd64.tar.gz"
    sha256 "163ccd4dcb928f534889a4f46e0fdee4d81826c8d0bbeec65ad0a3f8fd5982e3"
  end

  def install
    bin.install "rem"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rem version")
  end
end

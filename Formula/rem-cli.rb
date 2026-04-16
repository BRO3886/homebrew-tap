class RemCli < Formula
  desc "Blazing fast CLI for macOS Reminders — sub-200ms reads and writes via EventKit"
  homepage "https://github.com/BRO3886/rem"
  version "0.10.2"
  license "MIT"

  depends_on :macos
  conflicts_with "rem", because: "both install a `rem` binary"

  on_arm do
    url "https://github.com/BRO3886/rem/releases/download/v0.10.2/rem-darwin-arm64.tar.gz"
    sha256 "c061da372f210f56168e6e1e39bb43301abdeb78fcd06de870c6a683df4f69c9"
  end

  on_intel do
    url "https://github.com/BRO3886/rem/releases/download/v0.10.2/rem-darwin-amd64.tar.gz"
    sha256 "f9c972762bad882662b2f64d9c61424695cfdece3420cee56f2507624fbed23a"
  end

  def install
    bin.install "rem"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rem version")
  end
end

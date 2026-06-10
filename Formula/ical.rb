class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  version "0.12.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/BRO3886/ical/releases/download/v0.12.0/ical-darwin-arm64.tar.gz"
    sha256 "867cd932638345b887ad0292c971efca8b2994db5eb31409a3592d4dc3107d09"
  end

  on_intel do
    url "https://github.com/BRO3886/ical/releases/download/v0.12.0/ical-darwin-amd64.tar.gz"
    sha256 "16a13664ebc46b6875771093cb9204346b332a80de2d4855a11b6175e64a1394"
  end

  def install
    bin.install "ical"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ical version")
  end
end

class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  version "0.8.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/BRO3886/ical/releases/download/v0.8.0/ical-darwin-arm64.tar.gz"
    sha256 "d766dcfbf36fa6e51541489453a6bcd0061366034373b732bb330a1b4709cd4a"
  end

  on_intel do
    url "https://github.com/BRO3886/ical/releases/download/v0.8.0/ical-darwin-amd64.tar.gz"
    sha256 "23c01261bb2b0f726a7f8241b4c368ca14433771bde179d90ecb85fa020d7d15"
  end

  def install
    bin.install "ical"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ical version")
  end
end

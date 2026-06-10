class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  version "0.12.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/BRO3886/ical/releases/download/v0.12.1/ical-darwin-arm64.tar.gz"
    sha256 "6cfeecbc98b69f137c58b03762e4dc00ae23177b5cd06526ba101d5a5d4940ba"
  end

  on_intel do
    url "https://github.com/BRO3886/ical/releases/download/v0.12.1/ical-darwin-amd64.tar.gz"
    sha256 "16eee1746981f15b64a16d511da765ed3ff9012d125c1fc8fcc276d4df2420b8"
  end

  def install
    bin.install "ical"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ical version")
  end
end

class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  version "0.10.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/BRO3886/ical/releases/download/v0.10.0/ical-darwin-arm64.tar.gz"
    sha256 "7374bcecc5f402a93e59195fa395cab4f5695160e7c08649636e95ea7eb8fc8b"
  end

  on_intel do
    url "https://github.com/BRO3886/ical/releases/download/v0.10.0/ical-darwin-amd64.tar.gz"
    sha256 "2e7bef807c19505b4971f13ec8a5d79bfd12679695d8e81ebda16a57b78330c7"
  end

  def install
    bin.install "ical"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ical version")
  end
end

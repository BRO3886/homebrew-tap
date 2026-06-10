class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  version "0.11.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/BRO3886/ical/releases/download/v0.11.0/ical-darwin-arm64.tar.gz"
    sha256 "ec92063001d6c42756a050edd66bbb17868543b3fde1cb0c37fa070d87277285"
  end

  on_intel do
    url "https://github.com/BRO3886/ical/releases/download/v0.11.0/ical-darwin-amd64.tar.gz"
    sha256 "02b9ae991f3600a18362b84a10384074696d08ed1ae9cde9709c7ede46eafa47"
  end

  def install
    bin.install "ical"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ical version")
  end
end

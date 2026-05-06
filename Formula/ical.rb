class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  version "0.10.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/BRO3886/ical/releases/download/v0.10.1/ical-darwin-arm64.tar.gz"
    sha256 "dfa0154a71949daf2fd4298b3fdabaa0bd3a374c63bc1743adb3a1b535590b44"
  end

  on_intel do
    url "https://github.com/BRO3886/ical/releases/download/v0.10.1/ical-darwin-amd64.tar.gz"
    sha256 "71518f798637a53a05bd7e9ffa55419eeda3779cf7076fe24b5b3ea2345cf2dc"
  end

  def install
    bin.install "ical"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ical version")
  end
end

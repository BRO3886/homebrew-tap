class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  version "0.13.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/BRO3886/ical/releases/download/v0.13.1/ical-darwin-arm64.tar.gz"
    sha256 "39855387ed3aea9038c73853d8dbc2ec978d4293256040acc2a103afcd7650cf"
  end

  on_intel do
    url "https://github.com/BRO3886/ical/releases/download/v0.13.1/ical-darwin-amd64.tar.gz"
    sha256 "a920d4c56f6e92a8dfb56517121266c8d0a94348a8237cc9265ffaa682a9e0f5"
  end

  def install
    bin.install "ical"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ical version")
  end
end

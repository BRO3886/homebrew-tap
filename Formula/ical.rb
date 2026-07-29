class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  version "0.12.2"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/BRO3886/ical/releases/download/v0.12.2/ical-darwin-arm64.tar.gz"
    sha256 "d99925e4ffb39a4cd575557a56aec93376dae2243c1819f1a8a399fb95eaa6e0"
  end

  on_intel do
    url "https://github.com/BRO3886/ical/releases/download/v0.12.2/ical-darwin-amd64.tar.gz"
    sha256 "e6025ae7ea1c32a849fb91432a2c181dfb74db4b7358b8ad0aeceeae6f95d178"
  end

  def install
    bin.install "ical"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ical version")
  end
end

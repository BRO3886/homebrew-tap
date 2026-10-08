class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  version "0.13.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/BRO3886/ical/releases/download/v0.13.0/ical-darwin-arm64.tar.gz"
    sha256 "f2fd925dff173002e9a94691b04aaba90316a96a47faaa5dd08cc411ec390969"
  end

  on_intel do
    url "https://github.com/BRO3886/ical/releases/download/v0.13.0/ical-darwin-amd64.tar.gz"
    sha256 "16b4a3e3f5b30356087e9d1c03ca23aa44ee049dc6306ba8b854ba7d3e1ad6e4"
  end

  def install
    bin.install "ical"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ical version")
  end
end

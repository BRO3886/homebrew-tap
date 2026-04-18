class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  version "0.9.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/BRO3886/ical/releases/download/v0.9.0/ical-darwin-arm64.tar.gz"
    sha256 "abc33daf6cc15847e5a8b16777469bd2a645387f43454b9cf49909b0f058ec6a"
  end

  on_intel do
    url "https://github.com/BRO3886/ical/releases/download/v0.9.0/ical-darwin-amd64.tar.gz"
    sha256 "09b53ed1b9bbad7f1bba5f8f481416c494820ad5cb10071265441b2a60f42971"
  end

  def install
    bin.install "ical"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ical version")
  end
end

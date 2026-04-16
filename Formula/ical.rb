class Ical < Formula
  desc "Fast, native macOS Calendar CLI built on go-eventkit"
  homepage "https://github.com/BRO3886/ical"
  url "https://github.com/BRO3886/ical/archive/refs/tags/v0.8.0.tar.gz"
  license "MIT"

  depends_on :macos
  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/ical"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ical --version")
  end
end

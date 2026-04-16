class RemCli < Formula
  desc "Blazing fast CLI for macOS Reminders — sub-200ms reads and writes via EventKit"
  homepage "https://github.com/BRO3886/rem"
  url "https://github.com/BRO3886/rem/archive/refs/tags/v0.10.1.tar.gz"
  license "MIT"

  depends_on :macos
  depends_on "go" => :build

  conflicts_with "rem", because: "both install a `rem` binary"

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(output: bin/"rem", ldflags:), "./cmd/rem"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rem version")
  end
end

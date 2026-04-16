class Healthsync < Formula
  desc "Parse Apple Health exports into a local SQLite database for AI agents and CLI queries"
  homepage "https://github.com/BRO3886/healthsync"
  url "https://github.com/BRO3886/healthsync/archive/refs/tags/v0.5.1.tar.gz"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=brew
      -X main.date=#{time.iso8601}
    ]
    system "go", "build", *std_go_args(ldflags:), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/healthsync version")
  end
end

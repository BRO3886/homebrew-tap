class Gtasks < Formula
  desc "CLI tool for Google Tasks"
  homepage "https://github.com/BRO3886/gtasks"
  url "https://github.com/BRO3886/gtasks/archive/refs/tags/v0.13.0.tar.gz"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/BRO3886/gtasks/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtasks --version")
  end
end

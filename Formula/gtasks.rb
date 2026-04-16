class Gtasks < Formula
  desc "CLI tool for Google Tasks"
  homepage "https://github.com/BRO3886/gtasks"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BRO3886/gtasks/releases/download/v0.13.0/gtasks_mac_arm64_v0.13.0.tar.gz"
      sha256 "50955e59c8c0ce2255708774dbe520b27ab4749bffa7513416c2bcb42b5e192b"
    end

    on_intel do
      url "https://github.com/BRO3886/gtasks/releases/download/v0.13.0/gtasks_mac_amd64_v0.13.0.tar.gz"
      sha256 "ca24031f1303e5ab2798212143a3ab510970b03e048193325834e6e56c2ab1b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BRO3886/gtasks/releases/download/v0.13.0/gtasks_linux_arm64_v0.13.0.tar.gz"
    end

    on_intel do
      url "https://github.com/BRO3886/gtasks/releases/download/v0.13.0/gtasks_linux_amd64_v0.13.0.tar.gz"
    end
  end

  def install
    bin.install "gtasks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtasks --version")
  end
end

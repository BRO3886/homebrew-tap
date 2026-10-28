class Gtasks < Formula
  desc "CLI tool for Google Tasks"
  homepage "https://github.com/BRO3886/gtasks"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BRO3886/gtasks/releases/download/v0.13.1/gtasks_mac_arm64_v0.13.1.tar.gz"
      sha256 "07e457bebb4c8f937fb5e2e680da6b119b7be0c81b0e884c344456e0371233a1"
    end

    on_intel do
      url "https://github.com/BRO3886/gtasks/releases/download/v0.13.1/gtasks_mac_amd64_v0.13.1.tar.gz"
      sha256 "a9bb19b21b488f951c4e18052c5b7313142b8951da6a3e3f99e3af80649b3cb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BRO3886/gtasks/releases/download/v0.13.1/gtasks_linux_arm64_v0.13.1.tar.gz"
      sha256 "d03059211812fc9df90889b089359c8eeebd48372a35f9b3d015012d8725cf86"
    end

    on_intel do
      url "https://github.com/BRO3886/gtasks/releases/download/v0.13.1/gtasks_linux_amd64_v0.13.1.tar.gz"
      sha256 "a0f3af9c3852c4a969ed647296ff202eae7eca351c125f4e159c20ba74b3f648"
    end
  end

  def install
    bin.install "gtasks"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/gtasks --version")
  end
end

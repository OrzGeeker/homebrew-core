class RustThanos < Formula
  desc "An efficient Minecraft Java world optimization tool to detect and remove unused chunks"
  homepage "https://github.com/OrzMC/rust-thanos"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OrzMC/rust-thanos/releases/download/0.0.3/rust-thanos-0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "72a767f08bf36e588e26efa2c9436b9ef91d4b8d4d4eeeae1df0ba3bbb52d2ce"
    else
      url "https://github.com/OrzMC/rust-thanos/releases/download/0.0.3/rust-thanos-0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "5c4f7d72d54715d770f1e2845ad5e623ec3b630fd682bd06241d8cf547777307"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OrzMC/rust-thanos/releases/download/0.0.3/rust-thanos-0.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "40118393121d53fb05daaa012ad39d5570c3735384a9c5892b6d0edb852fecb3"
    else
      url "https://github.com/OrzMC/rust-thanos/releases/download/0.0.3/rust-thanos-0.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53e84e298d40412309e875dfc5f5c5675cfbb445ba3fcc6e9016db2aeebcd203"
    end
  end

  def install
bin.install "rust-thanos"
  end

  test do
    assert_match "OK", "OK"
  end
end

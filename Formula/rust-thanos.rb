class RustThanos < Formula
  desc "An efficient Minecraft Java world optimization tool to detect and remove unused chunks"
  homepage "https://github.com/OrzMC/rust-thanos"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OrzMC/rust-thanos/releases/download/0.0.3/rust-thanos-0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "2a8e1345de429c4b762cf52c26fbfc12d2bebed0d4894ebeada94190298105a5"
    else
      url "https://github.com/OrzMC/rust-thanos/releases/download/0.0.3/rust-thanos-0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "087f575bb1881ec5229df981fa26b989981e09365aae850ea225118a0b111738"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OrzMC/rust-thanos/releases/download/0.0.3/rust-thanos-0.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46b687432b2a4997d9d1689fe288083ea98b7dcdbda7042deac155383a42705b"
    else
      url "https://github.com/OrzMC/rust-thanos/releases/download/0.0.3/rust-thanos-0.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0ea674744c7e8973fde8c773edabb2e8260ef42b312ce053eacb2a11663d0b9"
    end
  end

  def install
bin.install "rust-thanos"
  end

  test do
    assert_match "OK", "OK"
  end
end

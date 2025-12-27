class RustThanos < Formula
  desc "An efficient Minecraft Java world optimization tool to detect and remove unused chunks"
  homepage "https://github.com/wangzhizhou/rust-thanos"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangzhizhou/rust-thanos/releases/download/0.0.2/rust-thanos-0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "9fa84284986e1828e041cec3749ea78e7beb635a0b5e2a8a599058c4e24eb8e3"
    else
      url "https://github.com/wangzhizhou/rust-thanos/releases/download/0.0.2/rust-thanos-0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "84dac119b91649cb97158084bb3ce435e963d3b662c08e65a4cf48a3654cc64f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wangzhizhou/rust-thanos/releases/download/0.0.2/rust-thanos-0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32215dfd5c2c22b137acc2a70fd6d34b9c65a2185248bfda0319e631dac67d06"
    else
      url "https://github.com/wangzhizhou/rust-thanos/releases/download/0.0.2/rust-thanos-0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "206d4f09f807f1c25f9fc4a2c7c57c082a2f92db8f6d7f34d4e3a0182efacd48"
    end
  end

  def install
bin.install "rust-thanos"
  end

  test do
    assert_match "OK", "OK"
  end
end

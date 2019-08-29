class RustThanos < Formula
  desc "Detect and remove unused chunks from Minecraft Java worlds"
  homepage "https://github.com/wangzhizhou/rust-thanos"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangzhizhou/rust-thanos/releases/download/0.0.1/rust-thanos-0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "2466bf95c87e5c47426485a177cb142c99b6eef766645684daff5697713614de"
    else
      url "https://github.com/wangzhizhou/rust-thanos/releases/download/0.0.1/rust-thanos-0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "62a04c58979886ecc98464e1ba71d7f46d95910530b6d0bc89ab64764252e2ca"
    end
  end

  def install
    bin.install "rust-thanos"
  end

  test do
    assert_match "rust-thanos", shell_output("#{bin}/rust-thanos --help")
  end
end


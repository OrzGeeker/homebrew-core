class RustThanos < Formula
  desc "An efficient Minecraft Java world optimization tool to detect and remove unused chunks"
  homepage "https://github.com/wangzhizhou/rust-thanos"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangzhizhou/rust-thanos/releases/download/0.0.1/rust-thanos-0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "62f9dc7848cc0f63e681cdc388dada372d9f746ae603e1b043128e7f26ad327a"
    else
      url "https://github.com/wangzhizhou/rust-thanos/releases/download/0.0.1/rust-thanos-0.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "fc9aedc8640ae41de7693832217b808b51b0725184731e2ab0529bef81a11c8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wangzhizhou/rust-thanos/releases/download/0.0.1/rust-thanos-0.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b1f98d7e9f682092be960f6dc35393e60c1fde2a38bc3e9b87ec09abbd640b6"
    else
      url "https://github.com/wangzhizhou/rust-thanos/releases/download/0.0.1/rust-thanos-0.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3508e361a61f137dea8b45140e3ef2f9e94b63702d449ab8b0dd267737c6f861"
    end
  end

  def install
bin.install "rust-thanos"
  end

  test do
    assert_match "OK", "OK"
  end
end

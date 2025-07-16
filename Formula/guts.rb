class Guts < Formula
  desc "🧠 Git written in Rust (school project)"
  homepage "https://github.com/Jeck0v/Guts"
  url "https://github.com/Jeck0v/Guts/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "1420c3b910b62a782ac9a68fc21f88e100891fa7fb10889c427bce1b13272a74"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/guts", "--version"
    # Test basic functionality
    system "#{bin}/guts", "--help"
  end
end

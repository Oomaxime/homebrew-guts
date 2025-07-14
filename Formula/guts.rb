class Guts < Formula
  desc "🧠 Git written in Rust (school project)"
  homepage "https://github.com/Jeck0v/Guts"
  url "https://github.com/Jeck0v/Guts/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "363d3f0a3cc29a728650ef52766f37688ea009167f380b07097a994fa5ed0d5b"
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

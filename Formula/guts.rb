class Guts < Formula
  desc "🧠 Git written in Rust (school project)"
  homepage "https://github.com/Jeck0v/Guts"
  url "https://github.com/Jeck0v/Guts/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "edff9679c901e1f2edb10a8fc26e18ed91151f66b2a75ad9ea9edca92bda8b23"
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

class Guts < Formula
  desc "🧠 Git written in Rust (school project)"
  homepage "https://github.com/Jeck0v/Guts"
  url "https://github.com/Jeck0v/Guts/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "6c3cefa2b9bbb30cca908529da247c4b049719b1798c229fbc9ab8ceebf47102"
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

class Guts < Formula
  desc "🧠 Git written in Rust (school project)"
  homepage "https://github.com/Jeck0v/Guts"
  url "https://github.com/Jeck0v/Guts/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "f46102be897121116a345297aac2bca3ccbbebb0582aae55b966185fa1382243"
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

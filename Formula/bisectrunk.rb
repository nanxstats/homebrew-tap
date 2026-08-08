class Bisectrunk < Formula
  desc "Parallel, environment-aware, resumable Git bisection executor"
  homepage "https://nanx.me/bisectrunk/"
  url "https://static.crates.io/crates/bisectrunk/bisectrunk-0.1.3.crate"
  sha256 "df9085e0065c0b3ee30c6e6e2af29b0430e7636e677af9a419a1a71ef0715fed"
  license "MIT"
  head "https://github.com/nanxstats/bisectrunk.git", branch: "main"

  depends_on "rust" => :build
  uses_from_macos "git"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bisectrunk --version")
    assert_match "Usage", shell_output("#{bin}/bisectrunk --help")
  end
end

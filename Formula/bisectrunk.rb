class Bisectrunk < Formula
  desc "Parallel, environment-aware, resumable Git bisection executor"
  homepage "https://nanx.me/bisectrunk/"
  url "https://static.crates.io/crates/bisectrunk/bisectrunk-0.1.2.crate"
  sha256 "53ce528d9fb45823db95e7cc0d235979bb76c61bcf4d578fc74c806847e32ed4"
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

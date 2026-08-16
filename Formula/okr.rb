class Okr < Formula
  desc "Reproducible R source context for coding agents"
  homepage "https://nanx.me/okr/"
  url "https://static.crates.io/crates/okr/okr-0.1.4.crate"
  sha256 "3df299f8e29a32f1b47e3b85335d96dbf2b46e959c6831cd9118f5e587148f51"
  license "MIT"
  head "https://github.com/nanxstats/okr.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/okr --version")
    assert_match "Usage", shell_output("#{bin}/okr --help")
  end
end

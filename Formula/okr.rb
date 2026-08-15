class Okr < Formula
  desc "Reproducible R source context for coding agents"
  homepage "https://nanx.me/okr/"
  url "https://static.crates.io/crates/okr/okr-0.1.2.crate"
  sha256 "4c8baf0bfe08e9df91350d4b016d0994e2d3657fd1645fe083a264cc332298d5"
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

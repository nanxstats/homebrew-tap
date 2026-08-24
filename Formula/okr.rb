class Okr < Formula
  desc "Reproducible R source context for coding agents"
  homepage "https://nanx.me/okr/"
  url "https://static.crates.io/crates/okr/okr-0.1.7.crate"
  sha256 "3b7b26e476dd75eeded61f2ddeb845222079ecffc4f4f375e96718470261db3a"
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

class Okr < Formula
  desc "Reproducible R source context for coding agents"
  homepage "https://nanx.me/okr/"
  url "https://static.crates.io/crates/okr/okr-0.1.3.crate"
  sha256 "b848202a3d0c821784d7cfd5934983ba67c153270bc29e580980c60580dac801"
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

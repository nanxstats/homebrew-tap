class Okr < Formula
  desc "Reproducible R source context for coding agents"
  homepage "https://nanx.me/okr/"
  url "https://static.crates.io/crates/okr/okr-0.1.9.crate"
  sha256 "cebfd790a7e31b06620f7c8c30afd2b4237622588be71cb04452c8e4d332e28a"
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

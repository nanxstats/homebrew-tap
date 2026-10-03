class Revdeprun < Formula
  desc "Reverse dependency checks for R with cloud-ready environment setup"
  homepage "https://nanx.me/revdeprun/"
  url "https://static.crates.io/crates/revdeprun/revdeprun-2.4.0.crate"
  sha256 "f38c5be6fe7347fc0cd39b97617b7e0e285a9bc193044e8f47da32978f71266c"
  license "MIT"
  head "https://github.com/nanxstats/revdeprun.git", branch: "main"

  depends_on "rust" => :build
  depends_on :linux

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revdeprun --version")
    assert_match "Usage", shell_output("#{bin}/revdeprun --help")
  end
end

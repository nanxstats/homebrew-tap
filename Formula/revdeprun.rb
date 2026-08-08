class Revdeprun < Formula
  desc "Reverse dependency checks for R with cloud-ready environment setup"
  homepage "https://nanx.me/revdeprun/"
  url "https://static.crates.io/crates/revdeprun/revdeprun-2.3.2.crate"
  sha256 "d60b8c6efc060aa62049a904c090fbb253d042db622ccb05e5ecd76d320cc0ca"
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

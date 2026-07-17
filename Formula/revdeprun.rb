class Revdeprun < Formula
  desc "Reverse dependency checks for R with cloud-ready environment setup"
  homepage "https://nanx.me/revdeprun/"
  url "https://static.crates.io/crates/revdeprun/revdeprun-2.2.3.crate"
  sha256 "29bc2ad54fe5d54f3a229c49e42b32425ada0fbb1dd96932ce5efcd122246173"
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

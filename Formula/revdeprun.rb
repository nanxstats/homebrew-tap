class Revdeprun < Formula
  desc "Reverse dependency checks for R with cloud-ready environment setup"
  homepage "https://nanx.me/revdeprun/"
  url "https://static.crates.io/crates/revdeprun/revdeprun-2.3.0.crate"
  sha256 "8e98872565593e39f24373ad46fba83211688e124b70d5dd825664dd9d4783b3"
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

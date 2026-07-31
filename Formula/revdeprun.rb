class Revdeprun < Formula
  desc "Reverse dependency checks for R with cloud-ready environment setup"
  homepage "https://nanx.me/revdeprun/"
  url "https://static.crates.io/crates/revdeprun/revdeprun-2.3.1.crate"
  sha256 "aeef753f4ac91517ab44eaafbb3d6dd53d7b7a734a4d079cd5532149a7949dcc"
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

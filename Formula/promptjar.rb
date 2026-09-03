class Promptjar < Formula
  desc "Query a Git repo of Markdown prompt archives like a database"
  homepage "https://github.com/nanxstats/promptjar"
  url "https://static.crates.io/crates/promptjar/promptjar-0.2.0.crate"
  sha256 "0f183ced74b7bd93ac45380596455ecbce8f8bb561eff2d65feab82b67feba61"
  license "MIT"
  head "https://github.com/nanxstats/promptjar.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pj --version")
    assert_match "Usage", shell_output("#{bin}/pj --help")
  end
end

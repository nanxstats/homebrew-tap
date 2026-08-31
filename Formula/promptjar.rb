class Promptjar < Formula
  desc "Query a Git repo of Markdown prompt archives like a database"
  homepage "https://github.com/nanxstats/promptjar"
  url "https://static.crates.io/crates/promptjar/promptjar-0.1.0.crate"
  sha256 "901740999d9dca5ba1b3884b2b3a235d5c45ed1d87ccdd113fec2c376446bad3"
  license "MIT"
  head "https://github.com/nanxstats/promptjar.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptj --version")
    assert_match "Usage", shell_output("#{bin}/ptj --help")
  end
end

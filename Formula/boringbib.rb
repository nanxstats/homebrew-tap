class Boringbib < Formula
  desc "Boring BibTeX formatter"
  homepage "https://github.com/nanxstats/boringbib"
  url "https://static.crates.io/crates/boringbib/boringbib-0.1.0.crate"
  sha256 "3c5c0bfdd0aa48b5651469f25e2fca8c40bc23915492090e20d4c1cef13a01af"
  license "MIT"
  head "https://github.com/nanxstats/boringbib.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/boringbib --version")
    assert_match "Usage", shell_output("#{bin}/boringbib --help")

    (testpath/"refs.bib").write <<~BIB
      @Article{example, title={Example title}, year={2026}}
    BIB

    system bin/"boringbib", "fmt", "refs.bib"
    assert_equal <<~BIB, (testpath/"refs.bib").read
      @article{example,
        title = {Example title},
        year  = {2026}
      }
    BIB
    system bin/"boringbib", "fmt", "--check", "refs.bib"
  end
end

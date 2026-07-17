class Asciilint < Formula
  include Language::Python::Virtualenv

  desc "ASCII and character policy checks for text files"
  homepage "https://nanx.me/asciilint/"
  url "https://files.pythonhosted.org/packages/69/21/eb73f32cbe2f31444b7c0987ff82e19eb73f86f31a5f1bba60f6634aded8/asciilint-0.3.0.tar.gz"
  sha256 "73349e3ce1165ed1135f7c57e3e0db87d57e7dd9abc764bc778b9c2885fb7aa7"
  license "MIT"
  head "https://github.com/nanxstats/asciilint.git", branch: "main"

  depends_on "python@3.14"

  pypi_packages package_name: "asciilint"

  resource "click" do
    url "https://files.pythonhosted.org/packages/76/d4/81420972a676e8ffea40450d8c8c92943e7218a78fe9b64359836cc9876b/click-8.4.2.tar.gz"
    sha256 "9a6cea6e60b17ebe0a44c5cc636d94f09bd66142c1cd7d8b4cd731c4917a15f6"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/5a/82/42f767fc1c1143d6fd36efb827202a2d997a375e160a71eb2888a925aac1/pathspec-1.1.1.tar.gz"
    sha256 "17db5ecd524104a120e173814c90367a96a98d07c45b2e10c2f3919fff91bf5a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asciilint --version")
    (testpath/"ascii.txt").write "Homebrew\n"
    assert_match "No issues", shell_output("#{bin}/asciilint --no-config ascii.txt")
  end
end

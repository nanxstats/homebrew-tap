class Asciilint < Formula
  include Language::Python::Virtualenv

  desc "ASCII and character policy checks for text files"
  homepage "https://nanx.me/asciilint/"
  url "https://files.pythonhosted.org/packages/0e/0b/dac9fa02c546cdd88a259eb8e9753a29963d50340c3955ed38c0f55725a9/asciilint-0.4.0.tar.gz"
  sha256 "c6c21f8f0422ad8dc3e602f9b6a493cfa3fa1e52d0f269f0cbf9da30eb88873f"
  license "MIT"
  head "https://github.com/nanxstats/asciilint.git", branch: "main"

  depends_on "python@3.14"

  pypi_packages package_name: "asciilint"

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0e/7fa0ef50764b67090eca4114772a2abf8b6148198475e54c660b97caeee6/click-8.5.0.tar.gz"
    sha256 "ba0d2089de75ea0310e2dde03160e6ca10009947fb95a182f9b54021bb272e34"
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

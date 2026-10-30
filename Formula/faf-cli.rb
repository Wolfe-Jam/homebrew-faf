class FafCli < Formula
  desc "CLI for .faf (Foundational AI-Context Format) — init, score, bi-sync, export"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-cli/-/faf-cli-8.6.0.tgz"
  sha256 "25df44d5b30abf30767cb192a730804ae08b4d53b080d726ba1554689323f12b"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", "--prefix", libexec, "-g", "faf-cli@#{version}"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/faf-cli --version")
  end
end

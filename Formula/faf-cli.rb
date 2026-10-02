class FafCli < Formula
  desc "CLI for .faf (Foundational AI-Context Format) — init, score, bi-sync, export"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-cli/-/faf-cli-8.1.0.tgz"
  sha256 "342205aa3296fc91e6182dc120c799ef5d088ef932692ef507b9048646ed8a72"
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

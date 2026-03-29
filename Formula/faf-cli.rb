class FafCli < Formula
  desc "CLI for .faf (Foundational AI-Context Format) — init, score, bi-sync, export"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-cli/-/faf-cli-6.0.11.tgz"
  sha256 "d8a7d09ef9e7e7aa4d13197aa2ca29bfa6a3ef4567bfaa9b1c79da24a15ed70f"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", "--prefix", libexec, "-g", "faf-cli@#{version}"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/faf-cli --version")
  end
end

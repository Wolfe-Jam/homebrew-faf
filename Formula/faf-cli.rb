class FafCli < Formula
  desc "CLI for .faf (Foundational AI-Context Format) — init, score, bi-sync, export"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-cli/-/faf-cli-5.0.1.tgz"
  sha256 "a516e2a43d6cef88111b7822c4c144b96ce76a84b34eb206aa241ccdad287610"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "faf", shell_output("#{bin}/faf --version")
  end
end

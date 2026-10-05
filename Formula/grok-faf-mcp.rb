class GrokFafMcp < Formula
  desc "Grok FAF — MCP server for xAI Grok (.faf project context)"
  homepage "https://faf.one/grok"
  url "https://registry.npmjs.org/grok-faf-mcp/-/grok-faf-mcp-2.1.0.tgz"
  sha256 "c4d2e8f8a766fc4f085f09bdb765f81ad5272645492677a2cd49dac0f3ec1a82"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "grok-faf-mcp", shell_output("#{bin}/grok-faf-mcp --version")
  end
end
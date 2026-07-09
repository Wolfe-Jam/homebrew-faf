class GrokFafMcp < Formula
  desc "Grok FAF — MCP server for xAI Grok (.faf project context)"
  homepage "https://faf.one/grok"
  url "https://registry.npmjs.org/grok-faf-mcp/-/grok-faf-mcp-1.9.1.tgz"
  sha256 "7aba16b59571c8a9a1c91594609088b12eaa77dacc23949bd9fdac8135249f2b"
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
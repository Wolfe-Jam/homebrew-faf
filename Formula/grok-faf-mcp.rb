class GrokFafMcp < Formula
  desc "Grok FAF — MCP server for xAI Grok (.faf project context)"
  homepage "https://faf.one/grok"
  url "https://registry.npmjs.org/grok-faf-mcp/-/grok-faf-mcp-1.10.0.tgz"
  sha256 "7c9faaacdf150da45ce31533e836dd9ee3e13fbe5891738c24196e985610584f"
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
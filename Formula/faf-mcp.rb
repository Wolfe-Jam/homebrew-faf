class FafMcp < Formula
  desc ".FAF Context: project context for Cursor, VS Code, Windsurf and Cline"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-mcp/-/faf-mcp-3.0.1.tgz"
  sha256 "5cce43dac0da7ebe0c82b053ab6880392ec831baa188a8ab985f6eefe58d2bb7"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # faf-mcp is a stdio MCP server with no --version flag; check the command installed
    assert_predicate bin/"faf-mcp", :exist?
  end
end

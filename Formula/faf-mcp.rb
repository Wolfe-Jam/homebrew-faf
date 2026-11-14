class FafMcp < Formula
  desc ".FAF Context: project context for Cursor, VS Code, Windsurf and Cline"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-mcp/-/faf-mcp-4.2.0.tgz"
  sha256 "84846c17e118d44c2a755a37ed2f08c278f6b35dab0501a654b69c767416f93c"
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

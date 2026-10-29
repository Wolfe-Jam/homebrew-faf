class FafMcp < Formula
  desc ".FAF Context: project context for Cursor, VS Code, Windsurf and Cline"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-mcp/-/faf-mcp-4.1.1.tgz"
  sha256 "c01f1246dd2ecb42c4945137ac205487937782cab43c6fb5d1dad59ca68b4ea8"
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

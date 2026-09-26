class FafMcp < Formula
  desc ".FAF Context: project context for Cursor, VS Code, Windsurf and Cline"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-mcp/-/faf-mcp-4.0.0.tgz"
  sha256 "e1e648a092fa35aa52ee9006aeb9a2f501599807825feeb7d385a73c48f1ca7c"
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

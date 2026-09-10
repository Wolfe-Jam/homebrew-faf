class FafMcp < Formula
  desc ".FAF Context: project context for Cursor, VS Code, Windsurf and Cline"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-mcp/-/faf-mcp-3.0.2.tgz"
  sha256 "900d830aa8d3e313afb885979094944ff5aa928564ad1e1d51c0ccc5dee776df"
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

class FafMcp < Formula
  desc "Universal MCP server for .faf — Cursor, Windsurf, VS Code, Cline"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-mcp/-/faf-mcp-2.2.0.tgz"
  sha256 "7eb792eb3965639e136088269c8efc42359cc0753126e2353e7d7097044d524f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "faf-mcp", shell_output("#{bin}/faf-mcp --version")
  end
end

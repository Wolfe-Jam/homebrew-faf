class FafMcp < Formula
  desc "Universal MCP server for .faf — Cursor, Windsurf, VS Code, Cline"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-mcp/-/faf-mcp-2.3.1.tgz"
  sha256 "90bdc8787a7d94cf51a7cd32bac6d4ae9ec1d138c1d7e2f4e81233fe1b8a40e8"
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

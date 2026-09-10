class FafMcp < Formula
  desc "Universal MCP server for .faf — Cursor, Windsurf, VS Code, Cline"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-mcp/-/faf-mcp-3.0.0.tgz"
  sha256 "e419c03267aa1ffa3dca40184d3036641c3e5f11e7496fb3b154306fdf6aa301"
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

class FafMcp < Formula
  desc "Universal MCP server for .faf — Cursor, Windsurf, VS Code, Cline"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-mcp/-/faf-mcp-2.1.2.tgz"
  sha256 "5571dffa5c0495bd7e52220b9a035cdac48804e8f1e8be02a4edb1ed661fe1f3"
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

class ClaudeFafMcp < Formula
  desc "Persistent project context - MCP server for Claude Desktop"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-2.9.0.tgz"
  sha256 "ed2d6c38f3e6d5978140ffaabf0a3976e68ac514221ac9c663a0a6ecedc120ff"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"claude-faf-mcp", "--version"
  end
end

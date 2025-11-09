class ClaudeFafMcp < Formula
  desc "Persistent project context - MCP server for Claude Desktop"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-3.0.5.tgz"
  sha256 "018dc0f15f1fcb96b4e34b721781e9e3390a1575da67a53843791c598437d9bd"
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

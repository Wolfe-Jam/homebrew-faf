class ClaudeFafMcp < Formula
  desc "🧡⚡️ Persistent project context • MCP server for Claude Desktop"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-2.6.7.tgz"
  sha256 "ad42bc4263f5a477fced053e96171bb3753fc1a9e75247f7d6f341a7678573e6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/claude-faf-mcp", "--version"
  end
end

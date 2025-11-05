class ClaudeFafMcp < Formula
  desc "🧡⚡️ Persistent project context • MCP server for Claude Desktop"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-2.8.1.tgz"
  sha256 "6fabd41f6a148981d985c14e423028f8b1944057579730fa8ea55e9e32b2b068"
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

class ClaudeFafMcp < Formula
  desc "Persistent project context - MCP server for Claude Desktop"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-3.0.0-beta.1.tgz"
  sha256 "f6c39b4776738d93be088ee9459a7c844cd3afbff839c6bef5bb59742364fa2e"
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

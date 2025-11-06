class ClaudeFafMcp < Formula
  desc "Persistent project context - MCP server for Claude Desktop"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-3.0.0-beta.2.tgz"
  sha256 "02bda426bd52175ebba36365b613e780f356d706fb66cb6295d7f49c7086b82e"
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

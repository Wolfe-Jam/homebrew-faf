class GrokFafMcp < Formula
  desc "Persistent project context - MCP server for Grok/xAI"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/grok-faf-mcp/-/grok-faf-mcp-1.0.2.tgz"
  sha256 "a9c00fe0e1409c9ce0ceb1673d46a0d282b83c53b6e186fdb25763a19e296815"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"grok-faf-mcp", "--version"
  end
end

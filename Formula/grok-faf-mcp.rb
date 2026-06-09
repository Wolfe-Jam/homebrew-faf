class GrokFafMcp < Formula
  desc "MCP server for xAI Grok — .faf project context"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/grok-faf-mcp/-/grok-faf-mcp-1.5.2.tgz"
  sha256 "8644081dc1aa2c3bfaa0651918f07e763f6af397da194dd22bea84e74d804169"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "grok-faf-mcp", shell_output("#{bin}/grok-faf-mcp --version")
  end
end

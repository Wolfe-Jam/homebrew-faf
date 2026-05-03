class GrokFafMcp < Formula
  desc "MCP server for xAI Grok — .faf project context"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/grok-faf-mcp/-/grok-faf-mcp-1.2.2.tgz"
  sha256 "e3abb15b9aba25a875a72474c5bf4b96169706831750e4cb9220aaac4b9125b6"
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

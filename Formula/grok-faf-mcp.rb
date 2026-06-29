class GrokFafMcp < Formula
  desc "MCP server for xAI Grok — .faf project context"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/grok-faf-mcp/-/grok-faf-mcp-1.9.0.tgz"
  sha256 "f85bc4f4e8323fe87f9517ad265ac3b2cf979c537c4363396e27e9bc4023bca1"
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

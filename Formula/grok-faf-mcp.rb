class GrokFafMcp < Formula
  desc "MCP server for xAI Grok — .faf project context"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/grok-faf-mcp/-/grok-faf-mcp-1.8.1.tgz"
  sha256 "4031d3e2a6849ac992afcbb7984e74fc6808770d19380c7a8d506539e54196be"
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

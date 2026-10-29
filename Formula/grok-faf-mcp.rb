class GrokFafMcp < Formula
  desc "Grok FAF — MCP server for xAI Grok (.faf project context)"
  homepage "https://faf.one/grok"
  url "https://registry.npmjs.org/grok-faf-mcp/-/grok-faf-mcp-2.2.1.tgz"
  sha256 "44cc0ce1af2c09deb5df11f7a94519b08370df3f0dca9c965e838f74b59abd65"
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
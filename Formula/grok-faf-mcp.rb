class GrokFafMcp < Formula
  desc "Grok FAF — MCP server for xAI Grok (.faf project context)"
  homepage "https://faf.one/grok"
  url "https://registry.npmjs.org/grok-faf-mcp/-/grok-faf-mcp-2.2.3.tgz"
  sha256 "90677691770a027bb41b161d3d6c001bf71cda5b37a1e99d98461d650a091213"
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
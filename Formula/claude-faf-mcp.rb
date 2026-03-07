class ClaudeFafMcp < Formula
  desc "MCP server for Claude — 33 FAF tools, IANA-registered .faf format"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-4.0.0.tgz"
  sha256 "ec31cef3c800a86c376b23ed3e2f078953a1333117d121df7b61a6e8a8046009"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "claude-faf-mcp", shell_output("#{bin}/claude-faf-mcp --version", 0)
  end
end

class ClaudeFafMcp < Formula
  desc "MCP server for Claude — 14 Core FAF tools, IANA-registered .faf format"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-7.0.1.tgz"
  sha256 "4bcad25f1220cd4e34eb06271f411ade398af08075ed1c89bf4c8930e573f6b9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "claude-faf-mcp", shell_output("#{bin}/claude-faf-mcp --version")
  end
end

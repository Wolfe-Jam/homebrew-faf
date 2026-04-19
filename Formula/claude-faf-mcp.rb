class ClaudeFafMcp < Formula
  desc "MCP server for Claude — 33 FAF tools, IANA-registered .faf format"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-5.5.1.tgz"
  sha256 "3ae6deb87f26596b32e409d238799913fa7503ce7972cdc4744699ae11e11c7c"
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

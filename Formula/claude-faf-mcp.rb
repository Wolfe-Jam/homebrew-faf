class ClaudeFafMcp < Formula
  desc "MCP server for Claude — 14 Core FAF tools, IANA-registered .faf format"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-7.1.0.tgz"
  sha256 "1d4b3b97423fbb8a171f8d22fd2af1d02d8cb71b58560c79000b18dfaf2214a9"
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

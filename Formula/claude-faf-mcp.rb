class ClaudeFafMcp < Formula
  desc "MCP server for Claude — 33 FAF tools, IANA-registered .faf format"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-5.9.0.tgz"
  sha256 "3d6c1fc76dbd920877f067db08a7d1e349aba07774fa7d47c012ecba7deb96f8"
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

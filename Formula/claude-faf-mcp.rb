class ClaudeFafMcp < Formula
  desc "MCP server for Claude — 33 FAF tools, IANA-registered .faf format"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-5.7.0.tgz"
  sha256 "5265b8b5cf57785ea512a315668b90bf5eeb8e827bfe0314756f6c46d5d8d3c1"
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

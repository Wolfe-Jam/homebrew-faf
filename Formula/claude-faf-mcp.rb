class ClaudeFafMcp < Formula
  desc "MCP server for Claude — 14 Core FAF tools, IANA-registered .faf format"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-7.2.1.tgz"
  sha256 "db45dd9b31b5c27e132c95786460c10d5feafa0a180018d61f9553bbb20d5690"
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

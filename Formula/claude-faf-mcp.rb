class ClaudeFafMcp < Formula
  desc "MCP server for Claude — 14 Core FAF tools, IANA-registered .faf format"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-7.2.2.tgz"
  sha256 "3b954372b77f07f80103562ed250079893e9aa5190cf470e7379e59e65275d4a"
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

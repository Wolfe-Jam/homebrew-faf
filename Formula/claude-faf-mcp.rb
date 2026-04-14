class ClaudeFafMcp < Formula
  desc "MCP server for Claude — 33 FAF tools, IANA-registered .faf format"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-5.4.0.tgz"
  sha256 "a116b0c7861a5ce8b62cb76ab96add5361f6456ecd6747f6a9124587eb0a477d"
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

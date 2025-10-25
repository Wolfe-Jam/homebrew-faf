class ClaudeFafMcp < Formula
  desc "🧡⚡️ Persistent project context • MCP server for Claude Desktop"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-2.6.6.tgz"
  sha256 "a2159b138f714871ac1b080c257be20c770a6bb4931df2539a660b1a0a9bb58d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/claude-faf-mcp", "--version"
  end
end

class ClaudeFafMcp < Formula
  desc "MCP server for Claude — 14 Core FAF tools, IANA-registered .faf format"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/claude-faf-mcp/-/claude-faf-mcp-6.0.0.tgz"
  sha256 "648af8f8f11919b5ef6c1477f0c7c382f25054dd076be7e563182d0bce5e8ad3"
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

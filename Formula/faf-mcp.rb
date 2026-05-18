class FafMcp < Formula
  desc "Universal MCP server for .faf — Cursor, Windsurf, VS Code, Cline"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-mcp/-/faf-mcp-2.1.0.tgz"
  sha256 "4a9268274738c7740af5a4c0cb1173283c12d423fea55ceb27dc759b73489f9e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "faf-mcp", shell_output("#{bin}/faf-mcp --version")
  end
end

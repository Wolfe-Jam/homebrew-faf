class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 9 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.5.1/rust-faf-mcp-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "291d825fe46d129cb99d275bf2e23b2ca87ac115c50f0a7d2184a11b65cbb393"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.5.1/rust-faf-mcp-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "4ae0b6afbf9328981c33b851f4922347935ff16882db91600e4052b8bf85471c"
    end
  end

  def install
    bin.install "rust-faf-mcp"
  end

  test do
    input = '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{"protocolVersion":"2024-11-05","capabilities":{},"clientInfo":{"name":"test","version":"1.0"}}}'
    output = pipe_output("#{bin}/rust-faf-mcp", input)
    assert_match "rust-faf-mcp", output
  end
end

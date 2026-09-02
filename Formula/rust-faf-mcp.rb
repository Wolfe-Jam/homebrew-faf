class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 11 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.7.0/rust-faf-mcp-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "1bced8c7d3687b194e8e6f4ae30534c922a641fb5739ce6fb985f6f7e0364df3"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.7.0/rust-faf-mcp-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "ffb320990112d4714d39f289a49648aee9d215c645ac86ad2c22223b6787b5b9"
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

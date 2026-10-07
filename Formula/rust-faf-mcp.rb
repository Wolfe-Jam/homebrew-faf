class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 11 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.8.2/rust-faf-mcp-0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "83d1847fcfab4f2f3c3f00699355f0dcb263cef7f29549fd393b692bf941c075"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.8.2/rust-faf-mcp-0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "37ba41c6656c0b04c3cac4f23937f506a61424b53e854818b2a19cb3f8b3b096"
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

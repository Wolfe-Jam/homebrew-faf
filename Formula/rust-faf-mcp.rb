class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 9 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.4.0/rust-faf-mcp-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f055ad135ec543c93d1943d5c773788f7560ca26bafea6d6149384d8bcdbccbd"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.4.0/rust-faf-mcp-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "608f728354c4c76f5fe9dd5a1a96a80580ac230e08cd1a8cece88d025895829a"
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

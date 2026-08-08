class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 9 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.4.1/rust-faf-mcp-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "feb33ea18a762a0b59fd627faec2bcae358981bcb08364f51f24ae6a44b6b9ca"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.4.1/rust-faf-mcp-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "6227849aca72775a3fa1b9722fc070f85fc5f73ba4390b8f55107d6f6f7dfd83"
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

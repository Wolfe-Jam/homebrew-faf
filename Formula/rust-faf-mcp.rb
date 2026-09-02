class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 11 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.7.1/rust-faf-mcp-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "251241fd331b1528e7ed75991dba32d5c5d4c765ca83319e727242ba8dd27725"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.7.1/rust-faf-mcp-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "770d595f46b087fa3f117f20e4c765bb73bad53dd2c8ba57778abc74add60d1b"
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

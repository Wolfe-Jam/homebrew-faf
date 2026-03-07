class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 5 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.1.0/rust-faf-mcp-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f547047314b2a90d262c0a7a6f5366b4e4b8d7a8221d35fef6266b7a526beb2b"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.1.0/rust-faf-mcp-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "6a766b6ba1831a86134f175d8f48dcc795f2374ddb37a502b96e760e228c75eb"
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

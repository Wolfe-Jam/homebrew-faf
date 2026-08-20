class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 9 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.4.3/rust-faf-mcp-0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "0ad392da364b895fa5b5a2a877b73271a9e7c31a489fec2a0de1120a00483ef0"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.4.3/rust-faf-mcp-0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "4fccc6fa06de942982891cef2c79938fd8b27fe5658340ea0415a95f61a88ccb"
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

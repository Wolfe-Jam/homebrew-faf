class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 9 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.6.0/rust-faf-mcp-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ee9a98c78db30b486d40cbd916f93a23056fc168f4ad378f7d7c141bcd636d8"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.6.0/rust-faf-mcp-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "1aa7546c1baa465628be267a8767366ff3e89c8b81f5fc2c5b042b90f30e3b6b"
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

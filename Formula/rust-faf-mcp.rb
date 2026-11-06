class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 11 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.9.0/rust-faf-mcp-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "a73e2691ea4941e17c8549c5be38da70705d6be18f96fe329c71a868e8f50b49"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.9.0/rust-faf-mcp-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "3a62e1adb0f5e03831c16ba91d16c1ce13709feb9fc18f7ad025ba8198086209"
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

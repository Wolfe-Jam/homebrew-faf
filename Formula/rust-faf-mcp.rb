class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 11 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.8.1/rust-faf-mcp-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "3aa0eaa8f6925ba288a03f30f30b651b75ee15171e5a3038f0eb13399771edca"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.8.1/rust-faf-mcp-0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "d0d461807803ddb74ddedd8dd9588b93c175060538684f9f983ac6d94b72404b"
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

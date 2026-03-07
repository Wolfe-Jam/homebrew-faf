class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 5 tools, IANA-registered format"
  homepage "https://faf.one"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.1.0/rust-faf-mcp-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.1.0/rust-faf-mcp-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.1.0/rust-faf-mcp-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER"
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

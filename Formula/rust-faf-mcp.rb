class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 9 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.5.0/rust-faf-mcp-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "7b3121dab8ac0e2527a6131c7a7d85e6ded5bdca651836fb0924c544bd417eab"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.5.0/rust-faf-mcp-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "f4b3f58ebbbf410e08cae5de9fe08712825260cd69e9c127241577ee08ed11c1"
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

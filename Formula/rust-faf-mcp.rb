class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 11 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.8.3/rust-faf-mcp-0.8.3-aarch64-apple-darwin.tar.gz"
      sha256 "959dfe9c9bf589551eecb1799e143582f2b3fec2d2cb613e15fabf1550dea69e"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.8.3/rust-faf-mcp-0.8.3-x86_64-apple-darwin.tar.gz"
      sha256 "07706e183cc075152ec336eedecc19904e0cf54755b127c0efaedfef4cb28ee7"
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

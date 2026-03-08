class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 8 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.2.0/rust-faf-mcp-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "5ecc75c07b412f39f90a70c6c5d1e15717e2da17dbe3ef1eff8f29a9bf71648b"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.2.0/rust-faf-mcp-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "d35a052ce5100ec6bd9cedd0de66d6085b1f583af24e1cad2eb33cc14479531f"
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

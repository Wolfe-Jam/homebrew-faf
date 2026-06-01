class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 8 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.3.1/rust-faf-mcp-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "f7428fb0c3fbaa716af4b59cf047866d1e24f5109dc43b0c04c6e0a6aeeac027"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.3.1/rust-faf-mcp-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "9bcfe66c6fdd3d1ee17ceb446f9fe84dbbff9b89db82cc340df4b06493897467"
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

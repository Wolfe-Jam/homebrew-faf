class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 11 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.8.0/rust-faf-mcp-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "c838531850c204901b8859ec2cc82996623be86bee202a5f8aac9e25e7ccfacd"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.8.0/rust-faf-mcp-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "6f95e9f65568ab6a9503296445c2a68f9d2a3e59658d7784106204eef4e9e95d"
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

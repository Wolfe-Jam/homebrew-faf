class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 11 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.9.1/rust-faf-mcp-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "353bdfd09b8f202f2cc291cf313eaa143cb61156aa75fe9371995b78c27b6e1b"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.9.1/rust-faf-mcp-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "dbe7e9bfba0210abab436d64cefe88f7f70c3f05bd61eff92ee6f16f84f20693"
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

class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 8 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.3.0/rust-faf-mcp-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "56a0d43c91dccdedefff6423c95f1cd04d4b442fbe118b330f709de5f62b9631"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.3.0/rust-faf-mcp-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "c7b06dfbbaa1c06cfb6300441837b0af1c07fa26abd55cfd18a9d8d0f7b92695"
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

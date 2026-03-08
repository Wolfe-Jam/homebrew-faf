class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 8 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.2.2/rust-faf-mcp-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "f507de5c6d07f6a3393da9df174596fea9367f96704950f81de3105ab7255c3c"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.2.2/rust-faf-mcp-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "010b5506eb4efe04d81dfbaccc7aebab4552f4760ff82de444b9918a874da245"
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

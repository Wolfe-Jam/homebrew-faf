class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 9 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.4.2/rust-faf-mcp-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "661593c406138a6c84d69309ad39eb8a6ad3bfe816969ec2d531fc5b263e5500"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.4.2/rust-faf-mcp-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "aed0fe1cd6a3943dcd74cbbb2dd3b7047139ec734f58fcebc047f938c64c7893"
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

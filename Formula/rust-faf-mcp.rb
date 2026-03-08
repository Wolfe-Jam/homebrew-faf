class RustFafMcp < Formula
  desc "Rust MCP server for FAF — 8 tools, IANA-registered format"
  homepage "https://faf.one"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.2.1/rust-faf-mcp-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "5dc45412b73bf5c6f5092e6e2f92677ab731b72fad2b6a9e07a8942ed8fe09af"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-mcp/releases/download/v0.2.1/rust-faf-mcp-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "48bb144eb245932b2eb042df895ff35e04cc186bac9b20e1277646b72a50e01e"
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

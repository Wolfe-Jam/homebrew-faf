class Wjttc < Formula
  desc "Championship-grade test certification for MCP servers — 52 tests, 9 tiers"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/wjttc/-/wjttc-1.4.0.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "wjttc", shell_output("#{bin}/wjttc --version")
  end
end

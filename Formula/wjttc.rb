class Wjttc < Formula
  desc "Championship-grade test certification for MCP servers — 52 tests, 9 tiers"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/wjttc/-/wjttc-1.3.0.tgz"
  sha256 "43b1fb6500970c6aa162a6a6fea329801c94ff88638ef263ecd19ab800bf1005"
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

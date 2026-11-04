class Wjttc < Formula
  desc "Championship-grade test certification for MCP servers — 52 tests, 9 tiers"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/wjttc/-/wjttc-1.4.2.tgz"
  sha256 "076c48519db5dddf26654a98b1272ac40e8d92cfc62941cf80bcd50a1ac2ded8"
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

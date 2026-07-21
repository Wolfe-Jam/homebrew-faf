class Wjttc < Formula
  desc "Championship-grade test certification for MCP servers — 52 tests, 9 tiers"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/wjttc/-/wjttc-1.4.1.tgz"
  sha256 "c5af9f18ce9bc7a050ae701585a50e6afb450f31655a6c5d6058fafb39ca3f7e"
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

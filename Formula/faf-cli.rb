class FafCli < Formula
  desc "FAF - Fast AF AI Context - Project DNA for ANY AI"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-cli/-/faf-cli-3.4.4.tgz"
  sha256 "9952e171ce7eaa73275dda2eb78ef72770eb62eae88b1806059fa054c0745aa0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/faf", "--version"
  end
end

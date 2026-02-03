class FafCli < Formula
  desc "FAF - Fast AF AI Context - Project DNA for ANY AI"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-cli/-/faf-cli-4.2.0.tgz"
  sha256 "82be1e942296698f65efb41534265020a4851753f6e892d1cff52882ab30d2a2"
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

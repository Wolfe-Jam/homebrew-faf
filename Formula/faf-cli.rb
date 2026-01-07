class FafCli < Formula
  desc "FAF - Fast AF AI Context - Project DNA for ANY AI"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-cli/-/faf-cli-3.4.2.tgz"
  sha256 "edf321afa88eeba07b59306fcc8e0f6268893a517dddd672399fa5c5eb7d48d0"
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

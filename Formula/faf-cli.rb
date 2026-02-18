class FafCli < Formula
  desc "FAF - Fast AF AI Context - Project DNA for ANY AI"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-cli/-/faf-cli-4.4.4.tgz"
  sha256 "32cef2cbe2065fff4e0667faf6e1cc53eddbabce62f8eab5bd8e0d848f55f8de"
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

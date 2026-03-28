class FafCli < Formula
  desc "CLI for .faf (Foundational AI-Context Format) — init, score, bi-sync, export"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-cli/-/faf-cli-6.0.10.tgz"
  sha256 "ec185840eaa271ae9ff0047bc5f184773eeaeeb666a8e90f5cae0fffc80dae89"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "faf", shell_output("#{bin}/faf --version")
  end
end

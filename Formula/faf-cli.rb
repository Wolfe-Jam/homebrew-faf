class FafCli < Formula
  desc "CLI for .faf (Foundational AI-Context Format) — init, score, bi-sync, export"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-cli/-/faf-cli-7.0.1.tgz"
  sha256 "07634973d30bf1a9d276c757b740fe014a8f269c6dd963718dbeae2daa4c073f"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", "--prefix", libexec, "-g", "faf-cli@#{version}"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/faf-cli --version")
  end
end

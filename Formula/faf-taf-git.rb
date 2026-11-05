class FafTafGit < Formula
  desc "Git-native test receipt printer (.taf) — audit trail and proof over time"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-taf-git/-/faf-taf-git-2.5.0.tgz"
  sha256 "3e8ab239171e21c411d534acca7ba0d2891034a7a25c081bb72e061e82f72e6e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "faf-taf-git", shell_output("#{bin}/faf-taf-git --version")
  end
end

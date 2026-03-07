class FafTafGit < Formula
  desc "Git-native test receipt printer (.taf) — audit trail and proof over time"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-taf-git/-/faf-taf-git-2.1.1.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
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

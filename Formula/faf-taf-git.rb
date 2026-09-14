class FafTafGit < Formula
  desc "Git-native test receipt printer (.taf) — audit trail and proof over time"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-taf-git/-/faf-taf-git-2.2.1.tgz"
  sha256 "8d9590e00791dc5ecd4f8c5d0d5db82dd6af705f679bf4d88a7bfdc23c6cd24c"
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

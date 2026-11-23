class TafGit < Formula
  desc "Git-native test receipt printer (.taf) — audit trail and proof over time"
  homepage "https://github.com/Wolfe-Jam/taf-git"
  url "https://registry.npmjs.org/taf-git/-/taf-git-3.0.2.tgz"
  sha256 "8c96274823ada4e7d04cfe99d019fd455f65e357d7d07b029deff8f43a9d1bdb"
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

class TafGit < Formula
  desc "Git-native test receipt printer (.taf) — audit trail and proof over time"
  homepage "https://github.com/Wolfe-Jam/taf-git"
  url "https://registry.npmjs.org/faf-taf-git/-/faf-taf-git-2.7.1.tgz"
  sha256 "2398b2025b182d20c10875e83574a0378eb3f672dcbda4069835890edfeb0426"
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

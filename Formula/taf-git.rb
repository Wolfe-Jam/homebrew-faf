class TafGit < Formula
  desc "Git-native test receipt printer (.taf) — audit trail and proof over time"
  homepage "https://github.com/Wolfe-Jam/taf-git"
  url "https://registry.npmjs.org/taf-git/-/taf-git-3.0.1.tgz"
  sha256 "ff9b65b439b7818cfb94b2e11d5bb3de928a7ea8c66dc4cade722a20f36036cf"
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

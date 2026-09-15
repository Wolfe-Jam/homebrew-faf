class FafTafGit < Formula
  desc "Git-native test receipt printer (.taf) — audit trail and proof over time"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-taf-git/-/faf-taf-git-2.3.0.tgz"
  sha256 "3ce9430302b1a5b6df66341979045f304a8489bd6cdbeee03b55cbcbfad8db99"
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

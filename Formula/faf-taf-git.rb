class FafTafGit < Formula
  desc "Git-native test receipt printer (.taf) — audit trail and proof over time"
  homepage "https://faf.one"
  url "https://registry.npmjs.org/faf-taf-git/-/faf-taf-git-2.3.1.tgz"
  sha256 "a426b7b41f7fcf970912db156ea3cbcd553ca84ee8156578deb00d2cb11470d0"
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

class TafGit < Formula
  desc "Git-native test receipt printer (.taf) — audit trail and proof over time"
  homepage "https://github.com/Wolfe-Jam/taf-git"
  url "https://registry.npmjs.org/faf-taf-git/-/faf-taf-git-3.0.0.tgz"
  sha256 "14f108599e6abe926f6ac63625574f60d8f8384473e95583d4ee568bfc0ccc05"
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

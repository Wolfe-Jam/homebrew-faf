class RustFafCli < Formula
  desc "FAF Compiler — AI-Readiness scoring, Glass Hood transparency, DRS auto-fix"
  homepage "https://faf.one"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.1.0/faf-1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e12c49c304c3a4f61fc71afde451204c0eedaced715f95780c7ecca0f812bf27"
    else
      url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.1.0/faf-1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "a68f3b7d8717f67d697163df3b641ccf02835b64e0cf617317edaeea19d53c10"
    end
  end

  on_linux do
    url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.1.0/faf-1.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "35b6a61b484735948367d16a8d6f38fe2fab027123d845384f06a4f230a9250f"
  end

  def install
    bin.install "faf"
  end

  test do
    system "#{bin}/faf", "--version"
  end
end

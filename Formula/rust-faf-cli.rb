class RustFafCli < Formula
  desc "FAF Compiler — AI-Readiness scoring, Glass Hood, FAFb compilation"
  homepage "https://faf.one/rust"
  version "1.2.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7ded0b6065f4556d7b9df246018c6f1ee80dcd06646f6071616e5aaa0da439d3"
    else
      url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "7208cca6f25764c9c581e9dc0c17bb6a7571f1716091ab687576040d36efa6e0"
    end
  end

  on_linux do
    url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "89e50228873c015ddc82c737c2c520a23a6edfb6f8b298d87cbff3dae03b35d4"
  end

  def install
    bin.install "faf"
  end

  test do
    system "#{bin}/faf", "--version"
  end
end

class RustFafCli < Formula
  desc "FAF Compiler — AI-Readiness scoring, Glass Hood, FAFb compilation"
  homepage "https://faf.one/rust"
  version "1.2.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "450e700c0cc28da706965f82353644f026956e2e3513ec4a730af9c237170301"
    else
      url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "5652069f1c5f960bf750d9436f45a98ec9b64e06268f548d70afc61ba579c382"
    end
  end

  on_linux do
    url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e8a24aaad08192e7d0f71be556bf49dd6ba44ec22cb04c676f2b8c75422d3de8"
  end

  def install
    bin.install "faf"
  end

  test do
    system "#{bin}/faf", "--version"
  end
end

class RustFafCli < Formula
  desc "FAF Compiler — AI-Readiness scoring, Glass Hood, FAFb compilation"
  homepage "https://faf.one/rust"
  version "1.2.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d1f95fc18d66c523934950705515c85ba314bedc89cbb9eb0692a8c3310d348a"
    else
      url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "b4b8602d9b4b76267732142963c2a28190075647a959a146417d279df2757fbd"
    end
  end

  on_linux do
    url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "305518a7b32d4a126c968f7558431407e66e92f85d56c31abd345e60bd41bfbe"
  end

  def install
    bin.install "faf"
  end

  test do
    system "#{bin}/faf", "--version"
  end
end

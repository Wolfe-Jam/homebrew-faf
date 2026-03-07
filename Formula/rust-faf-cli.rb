class RustFafCli < Formula
  desc "FAF Compiler — AI-Readiness scoring, Glass Hood, FAFb compilation"
  homepage "https://faf.one/rust"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "450e700c0cc28da706965f82353644f026956e2e3513ec4a730af9c237170301"
    end

    on_intel do
      url "https://github.com/Wolfe-Jam/rust-faf-cli/releases/download/v1.2.0/faf-1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "5652069f1c5f960bf750d9436f45a98ec9b64e06268f548d70afc61ba579c382"
    end
  end

  def install
    bin.install "faf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/faf --version")
  end
end

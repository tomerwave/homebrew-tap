class Godlint < Formula
  desc "Deterministic code-policy engine for polyglot repositories"
  homepage "https://github.com/tomerwave/godlint"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godlint/releases/download/v0.7.0/godlint-aarch64-apple-darwin.tar.gz"
      sha256 "fb28f004a8c8129145eec4225a225a3bbb0bd71f5028044c9ec5061d387fd8d9"

      define_method(:install) do
        bin.install "godlint"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godlint/releases/download/v0.7.0/godlint-x86_64-apple-darwin.tar.gz"
      sha256 "6a3fafc93402a08a2d644b2fc1c9cc87a4e3f871322804b152d2be9d9b9c708c"

      define_method(:install) do
        bin.install "godlint"
      end
    end
  end
end

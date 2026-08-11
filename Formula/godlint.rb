class Godlint < Formula
  desc "Deterministic code-policy engine for polyglot repositories"
  homepage "https://github.com/tomerwave/godlint"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godlint/releases/download/v0.8.0/godlint-aarch64-apple-darwin.tar.gz"
      sha256 "f04aaf7611a4d65d2e9b04f199d2ecd7cfe0b6516938b36db23ad0962bba354d"

      define_method(:install) do
        bin.install "godlint"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godlint/releases/download/v0.8.0/godlint-x86_64-apple-darwin.tar.gz"
      sha256 "85f9631cf926d8d927e9b6c7b60d25f1f633163955aee96f8c97ee4a32813686"

      define_method(:install) do
        bin.install "godlint"
      end
    end
  end
end

class Godlint < Formula
  desc "Deterministic code-policy engine for polyglot repositories"
  homepage "https://github.com/tomerwave/godlint"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godlint/releases/download/v0.9.1/godlint-aarch64-apple-darwin.tar.gz"
      sha256 "1c5dbed41480c5f27746c23458fa9826aa64a24ca1a1448378fae0a43a02b017"

      define_method(:install) do
        bin.install "godlint"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godlint/releases/download/v0.9.1/godlint-x86_64-apple-darwin.tar.gz"
      sha256 "c12be12b5ec28b227c70c420ae38305d04d30e1b32ce57c7fdb16125701bda0e"

      define_method(:install) do
        bin.install "godlint"
      end
    end
  end
end

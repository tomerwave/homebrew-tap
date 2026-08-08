class Godharness < Formula
  desc "Agent-context and documentation-governance framework"
  homepage "https://github.com/tomerwave/godharness"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.4/godharness-aarch64-apple-darwin.tar.gz"
      sha256 "f61408741bb43e4a809d84cd25a3580f48f9fe8a053a971feb2f1c62b22de950"

      define_method(:install) do
        bin.install "godharness"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.4/godharness-x86_64-apple-darwin.tar.gz"
      sha256 "f39b6aeaee0066059e83a248936b2695c20498b78905e269bb5ffcf86f5b6e65"

      define_method(:install) do
        bin.install "godharness"
      end
    end
  end
end

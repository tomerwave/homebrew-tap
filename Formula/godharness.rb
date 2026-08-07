class Godharness < Formula
  desc "Agent-context and documentation-governance framework"
  homepage "https://github.com/tomerwave/godharness"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.1/godharness-aarch64-apple-darwin.tar.gz"
      sha256 "250160fccd17ef63d93441ebaafb8be181cec8b931c727c546587b37301210b3"

      define_method(:install) do
        bin.install "godharness"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.1/godharness-x86_64-apple-darwin.tar.gz"
      sha256 "2e27b940e3f2c1c274caef86085f8e5840f376743fc2a71457d5098b2e96d819"

      define_method(:install) do
        bin.install "godharness"
      end
    end
  end
end

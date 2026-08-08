class Godharness < Formula
  desc "Agent-context and documentation-governance framework"
  homepage "https://github.com/tomerwave/godharness"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.5/godharness-aarch64-apple-darwin.tar.gz"
      sha256 "c6c0d93999cdf7edbf2b6e6b8303ffb2739b2d3db075405d0c8a798ecb08b544"

      define_method(:install) do
        bin.install "godharness"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.5/godharness-x86_64-apple-darwin.tar.gz"
      sha256 "936f718ecd0ec69ab686b246a18d0d978973725884690b65fecf6ac49a2f743a"

      define_method(:install) do
        bin.install "godharness"
      end
    end
  end
end

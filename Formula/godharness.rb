class Godharness < Formula
  desc "Agent-context and documentation-governance framework"
  homepage "https://github.com/tomerwave/godharness"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.2/godharness-aarch64-apple-darwin.tar.gz"
      sha256 "bc80ed6cdb19bf8cf1002f877c09957ff197e8ee1c24b111d5eeb425e6611bac"

      define_method(:install) do
        bin.install "godharness"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.2/godharness-x86_64-apple-darwin.tar.gz"
      sha256 "e1489f3f41c09edd3d02a06789d81685a3e1cda05796d51ab3fcfd96653ef949"

      define_method(:install) do
        bin.install "godharness"
      end
    end
  end
end

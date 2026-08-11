class Godharness < Formula
  desc "Agent-context and documentation-governance framework"
  homepage "https://github.com/tomerwave/godharness"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.7/godharness-aarch64-apple-darwin.tar.gz"
      sha256 "1c775e51195e0aabc9d46cb1d4b7808407413d7dd261b369e4a6fbb2bf7da17e"

      define_method(:install) do
        bin.install "godharness"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.7/godharness-x86_64-apple-darwin.tar.gz"
      sha256 "23d15f0d179b54c77fae6dd6591b6536ad71e14972cb4678acd5e0e8e96fecc9"

      define_method(:install) do
        bin.install "godharness"
      end
    end
  end
end

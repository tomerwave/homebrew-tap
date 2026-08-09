class Godharness < Formula
  desc "Agent-context and documentation-governance framework"
  homepage "https://github.com/tomerwave/godharness"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.6/godharness-aarch64-apple-darwin.tar.gz"
      sha256 "51e5b387551b451deafeb514d6874539df42b3c921a75f2c665f36242158ee8c"

      define_method(:install) do
        bin.install "godharness"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.6/godharness-x86_64-apple-darwin.tar.gz"
      sha256 "6f07070f82cc3c3053f68638b813a464f14136d347d075a3127615b106788e25"

      define_method(:install) do
        bin.install "godharness"
      end
    end
  end
end

class Godharness < Formula
  desc "Agent-context and documentation-governance framework"
  homepage "https://github.com/tomerwave/godharness"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.3/godharness-aarch64-apple-darwin.tar.gz"
      sha256 "e4fd5620b75eb19fbe135c4668d780e7f4a7af6a88f4f95c5d39f10db7b8f75d"

      define_method(:install) do
        bin.install "godharness"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.3/godharness-x86_64-apple-darwin.tar.gz"
      sha256 "89a0a81491581ee09c85f8ba05c9e9ed1b09b5af1e9e1ab1ef5c49bbb30da79a"

      define_method(:install) do
        bin.install "godharness"
      end
    end
  end
end

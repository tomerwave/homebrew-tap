class Godharness < Formula
  desc "Agent-context and documentation-governance framework"
  homepage "https://github.com/tomerwave/godharness"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.0/godharness-aarch64-apple-darwin.tar.gz"
      sha256 "1905bd36353c3ac9a0f61e4711ec9da9778003424b905c45cfb0ecaf6fd069dd"

      define_method(:install) do
        bin.install "godharness"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/godharness/releases/download/v0.1.0/godharness-x86_64-apple-darwin.tar.gz"
      sha256 "1f1b741b85b5886b52afc9ca5bb4c6ced03321441b7427310cb5cf80ab67f871"

      define_method(:install) do
        bin.install "godharness"
      end
    end
  end
end

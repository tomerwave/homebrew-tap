class ConvertToMd < Formula
  desc "Convert any website into markdown format"
  homepage "https://convert-to.md"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/homebrew-tap/releases/download/v1.0.0/convert-to-md-mac-arm64.tar.gz"
      sha256 "PASTE_MAC_ARM64_HASH_HERE"

      def install
        bin.install "convert-to-md-darwin-arm64" => "convert-to-md"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/homebrew-tap/releases/download/v1.0.0/convert-to-md-mac-intel.tar.gz"
      sha256 "PASTE_MAC_INTEL_HASH_HERE"

      def install
        bin.install "convert-to-md-darwin-amd64" => "convert-to-md"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tomerwave/homebrew-tap/releases/download/v1.0.0/convert-to-md-linux.tar.gz"
      sha256 "PASTE_LINUX_HASH_HERE"

      def install
        bin.install "convert-to-md-linux-amd64" => "convert-to-md"
      end
    end
  end

  test do
    system "#{bin}/convert-to-md", "--help"
  end
end
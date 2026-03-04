class ConvertToMd < Formula
  desc "Convert any website into markdown format"
  homepage "https://github.com/tomerwave/convert-to.md"
  url "https://github.com/tomerwave/convert-to.md/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "PASTE_YOUR_HASH_HERE"
  license "MIT" # Or your preferred license

  depends_on "go" => :build

  def install
    # This builds the binary using Go and moves it to the brew bin folder
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./main.go"
  end

  test do
    # A simple test to ensure the binary runs
    system "#{bin}/convert-to-md", "--version"
  end
end
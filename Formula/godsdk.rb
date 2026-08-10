class Godsdk < Formula
  desc "Technical SDK generator for the Godsuite"
  homepage "https://github.com/tomerwave/godsdk"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godsdk/releases/download/v0.1.2/godsdk-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "202219bdf7c5816e547cea0ac1eae6442c262b1024b79b0f735a45b57d9e248d"
    else
      url "https://github.com/tomerwave/godsdk/releases/download/v0.1.2/godsdk-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "76f02d14cc1235002110aedb001a23dcbc9613204198700d8c8da2d0dc93e821"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tomerwave/godsdk/releases/download/v0.1.2/godsdk-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f010693d1ab7154490e21317c1362f2464ba8bdea7cd70c6de6ae2b87d0b7db3"
    else
      url "https://github.com/tomerwave/godsdk/releases/download/v0.1.2/godsdk-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2a3fb7b43796ae3146e63b0a988f673eb39346c52ee77acb22fe19d4e82fadb"
    end
  end

  def install
    bin.install "godsdk"
  end
end

class Myc < Formula
  desc "Code knowledge graph engine for AI agents"
  homepage "https://github.com/marcmantei/myceliums"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marcmantei/myceliums/releases/download/v#{version}/myc-aarch64-apple-darwin.tar.gz"
      sha256 "74ed3d3f0cf236de92bf45829f450cc7dd0a6ecfd279ea7f8bfa0a5e9a4e6f53"
    else
      url "https://github.com/marcmantei/myceliums/releases/download/v#{version}/myc-x86_64-apple-darwin.tar.gz"
      sha256 "9af770329a31fbc59077c94746e36cf1b94d8dd45aaa7f2fad52858b8b2752b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marcmantei/myceliums/releases/download/v#{version}/myc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55ec60ff5c4d346dd83bcdaca01ddf6b0b337d44b2b6472747f11bf796a52d06"
    else
      url "https://github.com/marcmantei/myceliums/releases/download/v#{version}/myc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5bc3c33b1de49e55c45a0df8f677538d3cacf9718464bea2f889036ef49a550b"
    end
  end

  def install
    bin.install "myc"
  end

  test do
    assert_match "myc", shell_output("#{bin}/myc --version")
  end
end

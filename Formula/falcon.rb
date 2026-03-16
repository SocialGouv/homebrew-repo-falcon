class Falcon < Formula
  desc "Turn a repository into deterministic artifacts and a queryable code knowledge graph"
  homepage "https://github.com/SocialGouv/repo-falcon"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.0/falcon-darwin-arm64"
      sha256 "6ff30657c7bb7cd9423ac523ac534cb10cae4a1c9d03c2955f6d19a6f646bd52"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.0/falcon-darwin-amd64"
      sha256 "ea62d3b92f8415978046c0a506b3efcb421bbcbf2a3afbd22ac3dfd6d73f9f5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.0/falcon-linux-arm64"
      sha256 "8c1e4b37695332f9d22860380bb91144004823ef0984d6c58077cca875ceac4f"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.0/falcon-linux-amd64"
      sha256 "dee6954f7befa452294b06d50ee879ce93d771b044c353adb60fc8abb921b0d0"
    end
  end

  def install
    binary = Dir["falcon-*"].first
    mv binary, "falcon"
    bin.install "falcon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/falcon version")
  end
end

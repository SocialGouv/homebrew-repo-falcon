class Falcon < Formula
  desc "Turn a repository into deterministic artifacts and a queryable code knowledge graph"
  homepage "https://github.com/SocialGouv/repo-falcon"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.4/falcon-darwin-arm64"
      sha256 "97984d712c554a39939ac328a725515d85fe7fa29c7bcd08352e33ca0ca9cd72"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.4/falcon-darwin-amd64"
      sha256 "fd70937d26399e8ed6cdf9d00738204dec455b4f8ad9d2d334f86633419446ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.4/falcon-linux-arm64"
      sha256 "d3bf896bf335f3f0b9004dbeada055aa008396fc562ed8aedd3677a2afc81e08"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.4/falcon-linux-amd64"
      sha256 "fe598cf86b837fe2d33a7069b169d89d85e4db942b75e52d7a4aceffc758c9a6"
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

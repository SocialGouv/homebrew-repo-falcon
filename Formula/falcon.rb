class Falcon < Formula
  desc "Turn a repository into deterministic artifacts and a queryable code knowledge graph"
  homepage "https://github.com/SocialGouv/repo-falcon"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.2/falcon-darwin-arm64"
      sha256 "fcc4b4c2e14eeba1da2575bd78d180ef76fa1a8b1a9acb27da6636854a93cd1e"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.2/falcon-darwin-amd64"
      sha256 "88eb4b62e1b340c725322ca386c0c8a4771e84a922d4448fe3a860cbac31923c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.2/falcon-linux-arm64"
      sha256 "3727e5db7cc51e9a84ae4212029089a6c1ab0f2047765c968c9f10ddb71f5148"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.2/falcon-linux-amd64"
      sha256 "8e734f149e056e72dd27d920ee0ccbe67f7d2a4f1af808d425c88bec777f2eab"
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

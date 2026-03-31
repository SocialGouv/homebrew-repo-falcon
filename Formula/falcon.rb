class Falcon < Formula
  desc "Turn a repository into deterministic artifacts and a queryable code knowledge graph"
  homepage "https://github.com/SocialGouv/repo-falcon"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.3/falcon-darwin-arm64"
      sha256 "34e266463d7608900949a4fdb3c6abdf82a9734a589fd6e4e74986140a9cd28e"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.3/falcon-darwin-amd64"
      sha256 "3224738ceff725006123fa20cea28b87d0acf07ae1e879ab6022d497d128d51d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.3/falcon-linux-arm64"
      sha256 "51a3cab1c94828186185823844a7c2abc18c88adc0ca62c119e4602402cfae9c"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.3/falcon-linux-amd64"
      sha256 "be5c40390d8e47b68c6b32f7c1e27469aad30a9858885d24fd52fc15f3b3f849"
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

class Falcon < Formula
  desc "Turn a repository into deterministic artifacts and a queryable code knowledge graph"
  homepage "https://github.com/SocialGouv/repo-falcon"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.5.0/falcon-darwin-arm64"
      sha256 "dda32e74f1903548d7b6500249b182143e2100f38da3653f8abc4c5fd7c8e4de"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.5.0/falcon-darwin-amd64"
      sha256 "452a5fe39a8b95b7fdebd67070645f2c361f126ad5ecaaf799fe523fead7b70e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.5.0/falcon-linux-arm64"
      sha256 "4463b529a5107840376b1ff22e214ad3741f271f23a48e8209da0c1754bf4d4e"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.5.0/falcon-linux-amd64"
      sha256 "c6ac1e49a94acdd116c6fb36600f6df252e24f05880a0976873ce29a6ae3091c"
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

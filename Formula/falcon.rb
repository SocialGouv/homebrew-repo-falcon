class Falcon < Formula
  desc "Turn a repository into deterministic artifacts and a queryable code knowledge graph"
  homepage "https://github.com/SocialGouv/repo-falcon"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.4.1/falcon-darwin-arm64"
      sha256 "6a4385a875288b9df5014d007d70adf3b732e4cda8cc3c955a237d236b77c416"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.4.1/falcon-darwin-amd64"
      sha256 "af81c54ef394ca909ec99769477f8a8038c05081ebf14d80b457ff69efee5d21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.4.1/falcon-linux-arm64"
      sha256 "1fc066b7ec1756c8ccbe0a261480625ed42b8587457fcbf6d1df22c9192c5546"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.4.1/falcon-linux-amd64"
      sha256 "4cd1eb6500f442858614373432546eb382e697a4c95f7f8abe339a45a8815b58"
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

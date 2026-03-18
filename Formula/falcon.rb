class Falcon < Formula
  desc "Turn a repository into deterministic artifacts and a queryable code knowledge graph"
  homepage "https://github.com/SocialGouv/repo-falcon"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.1/falcon-darwin-arm64"
      sha256 "5241f50122fa73c86c5674d509a0e4759b9a25a4119c4f11384171073bf6e0ab"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.1/falcon-darwin-amd64"
      sha256 "2a8efb69c72004623fae064c9bbcb6df17010901754d9f25ba7a895976081339"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.1/falcon-linux-arm64"
      sha256 "8961b86d58b12b51590df477f65e5a5158b63a04d804d20992665618bef8cdbe"
    end
    on_intel do
      url "https://github.com/SocialGouv/repo-falcon/releases/download/v0.6.1/falcon-linux-amd64"
      sha256 "57751ac9bd91c3a4846cbde578ca2df6ee97c3c1a7fad9f7a5f12bffb81ab106"
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

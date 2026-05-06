class Bong < Formula
  desc "Watch a CI/CD pipeline. Ding when done."
  homepage "https://github.com/xbuzz/bong"
  url "https://github.com/xbuzz/bong/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "96256f26d8df7f9baf0513608f846e94ff0357b7936b1f8cd0dea7418a9989bc"
  license "MIT"

  depends_on "glab"

  def install
    bin.install "bong"
  end

  test do
    assert_match "bong", shell_output("#{bin}/bong --help")
  end
end

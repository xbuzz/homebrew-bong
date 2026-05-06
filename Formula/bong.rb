class Bong < Formula
  desc "Watch a CI/CD pipeline. Ding when done."
  homepage "https://github.com/xbuzz/bong"
  url "https://github.com/xbuzz/bong/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d348e7ab3703afea05b095dd0ec0e5274d8c9f701bb482eec7b85dac3a8e5c98"
  license "MIT"

  depends_on "glab"

  def install
    bin.install "bong"
  end

  test do
    assert_match "bong", shell_output("#{bin}/bong --help")
  end
end

class Test < Formula
  desc "Homebrew Test"
  homepage "https://github.com/duderman/homebrew-test"
  version "0.0.1"

  depends_on 'git'
  depends_on 'gh'

  url "https://github.com/duderman/homebrew-test/archive/v0.0.1.tar.gz"
  sha256 "918124634222c16186bce8976a4f990dbce1f9ffb717b9503b7c6310bed8ec91"

  def install
    bin.install "f3d"
  end

  test do
    help_text = shell_output("#{bin}/f3d --help")
    assert_includes help_text, "Usage:"
  end
end

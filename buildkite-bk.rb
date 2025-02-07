class BuildkiteBk < Formula
  homepage "https://github.com/buildkite/cli"
  desc "A command line interface for Buildkite."
  url "https://github.com/buildkite/cli/releases/download/v1.2.0/cli-darwin-amd64"
  version "v1.2.0"
  sha256 "943b1b47b27102746c0c9a2cb77990da628624869a8357687ff0a2c6f7349190"

  def install
    mv "cli-darwin-amd64", "bk"
    bin.install "bk"
  end

  test do
    assert_match "bk #{version}", shell_output("#{bin}/bk --version 2>&1")
  end
end

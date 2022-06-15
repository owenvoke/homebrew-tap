class Graphlint < Formula
  desc "Static analysis tool for GraphQL"
  homepage "https://github.com/worksome/graphlint"
  url "https://github.com/worksome/graphlint/releases/download/v0.3.1/graphlint"
  sha256 "ee9de994ab634d201bacb87674ace202075a38f51aed2662c1140bd6e11d351d"
  license "MIT"

  depends_on "php"

  def install
    bin.install "graphlint"
  end

  test do
    assert_match "Unable to find a \"graphlint.php\" configuration file",
                 shell_output("#{bin}/graphlint test.graphql", 1)
  end
end

class GitExclude < Formula
  desc "Manage .git/info/exclude from the terminal"
  homepage "https://github.com/ppseprus/git-exclude"
  url "https://github.com/ppseprus/git-exclude/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "07edaab427b6fdd61fb48cda5333163bf448c19b08064d19127e84a2bda7a6d4"
  license "MIT"

  depends_on "git" => :test

  def install
    bin.install "git-exclude"
    man1.install "git-exclude.1"
  end

  test do
    system "git", "init", testpath
    # Through git, so the test covers the PATH dispatch users rely on.
    assert_equal "Excluded '/notes.md'\n",
                 shell_output("git exclude notes.md")
    assert_match "/notes.md", (testpath/".git/info/exclude").read
    assert_equal "Removed '/notes.md'\n",
                 shell_output("git exclude remove notes.md")
  end
end

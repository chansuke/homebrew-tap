class KenallRs < Formula
  desc "Unofficial command-line interface for Kenall API"
  homepage "https://github.com/chansuke/kenall-rs"
  license any_of: ["MIT", "Apache-2.0"]

  # v0.1.3 has no arm64 macOS build, so Apple Silicon runs the x86_64 binary under Rosetta.
  if OS.mac?
    url "https://github.com/chansuke/kenall-rs/releases/download/v0.1.3/kenall-rs-macos.tar.gz"
    sha256 "018171a1a7c834b26c319110023afdc3291abe5ae27833696b6376516f5ef52b"
  else
    url "https://github.com/chansuke/kenall-rs/releases/download/v0.1.3/kenall-rs-linux.tar.gz"
    sha256 "d64807c9b886ab506b9f776f3dacb92a97e5adce9b44ffc2b937ef931cebb861"
  end

  def install
    bin.install "kenall-rs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kenall-rs --version")
  end
end

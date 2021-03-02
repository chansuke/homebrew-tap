class KenallRs < Formula
  desc "Unofficial command-line interface for Kenall API"
  homepage ""
  version "v0.1.3"
  license "MIT or Apache2"

  if OS.mac?
    url "https://github.com/chansuke/kenall-rs/releases/download/#{version}/kenall-rs-macos.tar.gz"
    sha256 "018171a1a7c834b26c319110023afdc3291abe5ae27833696b6376516f5ef52b"
  elsif OS.linux?
    url "https://github.com/chansuke/kenall-rs/releases/download/#{version}/kenall-rs-linux.tar.gz"
    sha256 "d64807c9b886ab506b9f776f3dacb92a97e5adce9b44ffc2b937ef931cebb861"
  end

  def install
    bin.install "kenall-rs"
  end

  test do
    system "#{bin}/kenall-rs", "--version"
  end
end

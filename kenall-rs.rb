class KenallRs < Formula
  desc "Unofficial command-line interface for Kenall API"
  homepage "https://github.com/chansuke/kenall-rs"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/chansuke/kenall-rs/releases/download/v0.1.4/kenall-rs-macos-arm64.tar.gz"
    sha256 "0b5ecbbaffc3dee899b2d463baa985c452f5e20931c39ddefd45df044fdb7f8b"
  elsif OS.mac?
    url "https://github.com/chansuke/kenall-rs/releases/download/v0.1.4/kenall-rs-macos.tar.gz"
    sha256 "0109d6a02090c5179e6f2d6c4e543e1f7aaf8882dcd5c4a72a3552ace42e992c"
  else
    url "https://github.com/chansuke/kenall-rs/releases/download/v0.1.4/kenall-rs-linux.tar.gz"
    sha256 "48d4ab3b68141e7591c9fb36051e22f1e93a710206b52c8a31c9a9f5e58108f7"
  end

  def install
    bin.install "kenall-rs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kenall-rs --version")
  end
end

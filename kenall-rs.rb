class KenallRs < Formula
  desc "Unofficial command-line interface for Kenall API"
  homepage ""
  url "https://github.com/chansuke/kenall-rs/archive/v0.1.0.tar.gz"
  sha256 "f641ea591a3d70065f49c233c5ed47df9665d8312d553085035c8dacaf906534"
  license "MIT or Apache2"

  version "0.1.0"
  # depends_on "cmake" => :build

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
  end

  test do
    system "false"
  end
end

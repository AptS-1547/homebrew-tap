# typed: false
# frozen_string_literal: true

class Shortlinker < Formula
  desc "A minimalist URL shortener service supporting HTTP 307 redirection"
  homepage "https://github.com/AptS-1547/shortlinker"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.0/shortlinker_v0.4.0_macos_aarch64"
      sha256 "2ea4b50d0eab0a2a7278c2718c5351d54e0cd7069a7796e56f50469a0a3f644e"

      def install
        bin.install "shortlinker_v0.4.0_macos_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.0/shortlinker_v0.4.0_macos_x86_64"
      sha256 "3785afa110967c60ade3a39460deb61eacbbd20855ef6ea4c4f3bb6dbe52804e"

      def install
        bin.install "shortlinker_v0.4.0_macos_x86_64" => "shortlinker"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.0/shortlinker_v0.4.0_linux_aarch64"
      sha256 "0db21c1a5eba49425568151f66753e6d02bf5ede5de8ccd7437476e5fd1c6a3a"

      def install
        bin.install "shortlinker_v0.4.0_linux_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.0/shortlinker_v0.4.0_linux_x86_64"
      sha256 "a3e358ead6fcf3ccf0d2ba214f29d894b218dafb6f2b7d5876f700667bde2eab"

      def install
        bin.install "shortlinker_v0.4.0_linux_x86_64" => "shortlinker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortlinker --version")
  end
end

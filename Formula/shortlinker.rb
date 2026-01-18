# typed: false
# frozen_string_literal: true

class Shortlinker < Formula
  desc "A minimalist URL shortener service supporting HTTP 307 redirection"
  homepage "https://github.com/AptS-1547/shortlinker"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.3.0/shortlinker_v0.3.0_macos_aarch64"
      sha256 "97a3b0b437ff6fcb991a4d8c90349fea99b2efb61900913081edd7d19cd31bae"

      def install
        bin.install "shortlinker_v0.3.0_macos_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.3.0/shortlinker_v0.3.0_macos_x86_64"
      sha256 "366071af29cabfe6ff5a0782f197decffb97dd2327fe77312d02f024c583b88f"

      def install
        bin.install "shortlinker_v0.3.0_macos_x86_64" => "shortlinker"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.3.0/shortlinker_v0.3.0_linux_aarch64"
      sha256 "024733e4712dfc26deb99df3c184a5f7f81614cb414810b4088b4eded65c459b"

      def install
        bin.install "shortlinker_v0.3.0_linux_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.3.0/shortlinker_v0.3.0_linux_x86_64"
      sha256 "e54be4ac5a27a63a3a5efc529e039991a4b8f3160bc5590cdf76f60d711b391d"

      def install
        bin.install "shortlinker_v0.3.0_linux_x86_64" => "shortlinker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortlinker --version")
  end
end

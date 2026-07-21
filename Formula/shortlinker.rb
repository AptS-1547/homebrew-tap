# typed: false
# frozen_string_literal: true

class Shortlinker < Formula
  desc "A minimalist URL shortener service supporting HTTP 307 redirection"
  homepage "https://github.com/AptS-1547/shortlinker"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.6.0/shortlinker_v0.6.0_macos_aarch64"
      sha256 "65cc0f99da7ce495884b17aeaaf1378713975aadca91740b33f7c839355464bc"

      def install
        bin.install "shortlinker_v0.6.0_macos_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.6.0/shortlinker_v0.6.0_macos_x86_64"
      sha256 "40e2982dfcaec68146ce68ad10e6c8e167d301b8733326c77d271709e0512fd6"

      def install
        bin.install "shortlinker_v0.6.0_macos_x86_64" => "shortlinker"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.6.0/shortlinker_v0.6.0_linux_aarch64"
      sha256 "66f75616b946e7361e7b32af56ef288b39217374230b1d98f5d31280bd7b5986"

      def install
        bin.install "shortlinker_v0.6.0_linux_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.6.0/shortlinker_v0.6.0_linux_x86_64"
      sha256 "417555ee57f50f4fd632238db7c86688b1c90e5e588ee2d0bbff6c2c69a33ce1"

      def install
        bin.install "shortlinker_v0.6.0_linux_x86_64" => "shortlinker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortlinker --version")
  end
end

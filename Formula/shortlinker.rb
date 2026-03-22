# typed: false
# frozen_string_literal: true

class Shortlinker < Formula
  desc "A minimalist URL shortener service supporting HTTP 307 redirection"
  homepage "https://github.com/AptS-1547/shortlinker"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.2/shortlinker_v0.5.2_macos_aarch64"
      sha256 "981c98f53bc5e17c87d8b35215ae81ed155c0166ada66c76b31697e47502709d"

      def install
        bin.install "shortlinker_v0.5.2_macos_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.2/shortlinker_v0.5.2_macos_x86_64"
      sha256 "88c796eb0bd8903a624893509bd0364476cdef223ab45365b28f797f8691d2e0"

      def install
        bin.install "shortlinker_v0.5.2_macos_x86_64" => "shortlinker"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.2/shortlinker_v0.5.2_linux_aarch64"
      sha256 "d9057936b851e42a9fe8941f9b9848c72d3c428c45dbfdf4082a3ee4ab82e151"

      def install
        bin.install "shortlinker_v0.5.2_linux_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.5.2/shortlinker_v0.5.2_linux_x86_64"
      sha256 "7568adb0b8e21407c7699f877a6cb7ccd5990bdc5b37324eff89668e6f444b44"

      def install
        bin.install "shortlinker_v0.5.2_linux_x86_64" => "shortlinker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortlinker --version")
  end
end

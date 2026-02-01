# typed: false
# frozen_string_literal: true

class Shortlinker < Formula
  desc "A minimalist URL shortener service supporting HTTP 307 redirection"
  homepage "https://github.com/AptS-1547/shortlinker"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.3/shortlinker_v0.4.3_macos_aarch64"
      sha256 "ee681eca8be5f3dbf206b1f622c207919b66aecd3cd34fd2d7a813dc8d34abbb"

      def install
        bin.install "shortlinker_v0.4.3_macos_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.3/shortlinker_v0.4.3_macos_x86_64"
      sha256 "2a9c383a37e71af12cc3a1d693df74fee5b6750f397e9944db7299ec818336d6"

      def install
        bin.install "shortlinker_v0.4.3_macos_x86_64" => "shortlinker"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.3/shortlinker_v0.4.3_linux_aarch64"
      sha256 "d3132acb19209fb1c71fef30d6a2914f2f7977b75741cae41f9887fbf9d8223c"

      def install
        bin.install "shortlinker_v0.4.3_linux_aarch64" => "shortlinker"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/shortlinker/releases/download/v0.4.3/shortlinker_v0.4.3_linux_x86_64"
      sha256 "d4bcd49f7bca06031e6800759870442eb7eea3ef59862e5d31fdd13ac118efd5"

      def install
        bin.install "shortlinker_v0.4.3_linux_x86_64" => "shortlinker"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shortlinker --version")
  end
end

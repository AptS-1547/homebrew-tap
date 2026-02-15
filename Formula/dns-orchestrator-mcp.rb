# typed: false
# frozen_string_literal: true

class DnsOrchestratorMcp < Formula
  desc "MCP Server for DNS Orchestrator - AI agent interface"
  homepage "https://github.com/AptS-1547/dns-orchestrator"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v1.10.0/dns-orchestrator-mcp-v1.10.0-aarch64-apple-darwin"
      sha256 "dde3bcb465c9c650597d8a8e2c59e6f84c6d1e94894f3fdd348bcaaff8bcb0ae"

      def install
        bin.install "dns-orchestrator-mcp-v1.10.0-aarch64-apple-darwin" => "dns-orchestrator-mcp"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v1.10.0/dns-orchestrator-mcp-v1.10.0-x86_64-apple-darwin"
      sha256 "bdf4ae4e02d85ed22b740754e8fbfa7334b4ce3511c0c4a7171f07105fd4cf49"

      def install
        bin.install "dns-orchestrator-mcp-v1.10.0-x86_64-apple-darwin" => "dns-orchestrator-mcp"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v1.10.0/dns-orchestrator-mcp-v1.10.0-aarch64-unknown-linux-gnu"
      sha256 "03bc4928eca23d7541bdbc99f2202ef042bde6eb0ac1f618c65c3b6d16756a17"

      def install
        bin.install "dns-orchestrator-mcp-v1.10.0-aarch64-unknown-linux-gnu" => "dns-orchestrator-mcp"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v1.10.0/dns-orchestrator-mcp-v1.10.0-x86_64-unknown-linux-gnu"
      sha256 "55ee6e3f009f7afd09b574feb89bc528fa1759de606ab7a00baa613bab8162bd"

      def install
        bin.install "dns-orchestrator-mcp-v1.10.0-x86_64-unknown-linux-gnu" => "dns-orchestrator-mcp"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dns-orchestrator-mcp --version")
  end
end

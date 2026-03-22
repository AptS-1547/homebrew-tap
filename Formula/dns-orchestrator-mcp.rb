# typed: false
# frozen_string_literal: true

class DnsOrchestratorMcp < Formula
  desc "MCP Server for DNS Orchestrator - AI agent interface"
  homepage "https://github.com/AptS-1547/dns-orchestrator"
  version "1.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v1.10.1/dns-orchestrator-mcp-v1.10.1-aarch64-apple-darwin"
      sha256 "7bf4739220973e51a2a2af6a2e801bd24ef8ba2d87b89cd4917964c4e0e6b7d3"

      def install
        bin.install "dns-orchestrator-mcp-v1.10.1-aarch64-apple-darwin" => "dns-orchestrator-mcp"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v1.10.1/dns-orchestrator-mcp-v1.10.1-x86_64-apple-darwin"
      sha256 "bef7616b19d7401de38faa5d9aed7ae99de12cbf27899b7d9efbb22f004b946a"

      def install
        bin.install "dns-orchestrator-mcp-v1.10.1-x86_64-apple-darwin" => "dns-orchestrator-mcp"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v1.10.1/dns-orchestrator-mcp-v1.10.1-aarch64-unknown-linux-gnu"
      sha256 "c787e8fe2bc9c3851e4feaaba4780fca961693410d11e528a24aa2a9431d4dd6"

      def install
        bin.install "dns-orchestrator-mcp-v1.10.1-aarch64-unknown-linux-gnu" => "dns-orchestrator-mcp"
      end
    end

    on_intel do
      url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v1.10.1/dns-orchestrator-mcp-v1.10.1-x86_64-unknown-linux-gnu"
      sha256 "46967ae603da592aebc89fed68a896e3ed6f4f32faf94c42fb47644c26b58451"

      def install
        bin.install "dns-orchestrator-mcp-v1.10.1-x86_64-unknown-linux-gnu" => "dns-orchestrator-mcp"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dns-orchestrator-mcp --version")
  end
end

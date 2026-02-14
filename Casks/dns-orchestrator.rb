cask "dns-orchestrator" do
  version "1.9.1"

  on_arm do
    sha256 "882b54c0f99b8454a998f76a864b90d1f6646f44755b21af6b92834c39964840"
    url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v#{version}/DNS.Orchestrator_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f6c17eff1303e2467ed454d8445cd6c5cd3213c501fd7517ff0362a7098fe143"
    url "https://github.com/AptS-1547/dns-orchestrator/releases/download/v#{version}/DNS.Orchestrator_#{version}_x64.dmg"
  end

  name "DNS Orchestrator"
  desc "DNS configuration management tool"
  homepage "https://github.com/AptS-1547/dns-orchestrator"

  app "DNS Orchestrator.app"

  zap trash: [
    "~/Library/Application Support/net.esaps.dns-orchestrator",
    "~/Library/Caches/net.esaps.dns-orchestrator",
    "~/Library/Preferences/net.esaps.dns-orchestrator.plist",
  ]
end


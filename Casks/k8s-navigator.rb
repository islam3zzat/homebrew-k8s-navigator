cask "k8s-navigator" do
  version "0.0.52"
  sha256 "c79ee0512ee03c5ac82a86dc34905d51a7d091f10ade2e76c508fd4f7042533d"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end

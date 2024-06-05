cask "k8s-navigator" do
  version "0.0.50"
  sha256 "93c674fac13aa0e9cc001d14b2047d970a80e44f6b766923c2527516ebab8194"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end

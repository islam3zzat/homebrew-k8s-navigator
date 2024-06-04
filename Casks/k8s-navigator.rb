cask "k8s-navigator" do
  version "0.0.47"
  sha256 "b37105eae98fb54a2643a12bd6c2d112221aaa3a76c96cab3ab06564afad3248"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end

cask "k8s-navigator" do
  version "0.0.52"
  sha256 "21db6548f3c09537bdd9f17f4de2540a268b29516e291147d4df083bef530676"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end

cask "k8s-navigator" do
  version "0.0.45"
  sha256 "efee2d8fb36470675f9bfc3b91ac2d7c2556588a242cee6dc34e7ba0ba168a1b"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end

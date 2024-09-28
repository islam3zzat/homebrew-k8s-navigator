cask "k8s-navigator" do
  version "0.0.58"
  sha256 "3e56b1e1fd14767b10603a996f7bd153a095d0d108fbd88c243ac52f20407cbe"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"
end

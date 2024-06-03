cask "k8s-navigator" do
  version "0.0.41"
  sha256 "9f3e60b92994f92a81ea44df8792c70fcceba4513f5521da22acfe00b212acd3"

  url "https://github.com/islam3zzat/k8s-navigator/releases/download/#{version}/k8s-navigator-#{version}-universal.dmg"
  name "K8s Navigator"
  desc "Tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"

  depends_on formula: "node"

  app "k8s-navigator.app"

  caveats <<~EOS
    To add k8s-navigator to your PATH, you can use the following command:
      echo 'export PATH="/Applications/k8s-navigator.app/Contents/MacOS:$PATH"' >> ~/.zshrc

    or for bash users:
      echo 'export PATH="/Applications/k8s-navigator.app/Contents/MacOS:$PATH"' >> ~/.bashrc

    You will need to restart your terminal for the changes to take effect.
  EOS

  zap trash: [
    "~/Library/Application Support/k8s-navigator",
    "~/Library/Preferences/com.example.k8s-navigator.plist",
    "~/Library/Saved Application State/com.example.k8s-navigator.savedState",
  ]

  test do
    system "/Applications/k8s-navigator.app/Contents/MacOS/k8s-navigator", "--version"
  end
end

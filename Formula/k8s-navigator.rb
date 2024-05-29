class K8sNavigator < Formula
  desc "K8s Navigator is a tool for navigating Kubernetes clusters"
  homepage "https://github.com/islam3zzat/k8s-navigator"
  url "https://storage.googleapis.com/k8s-navigator-bucket/k8s-navigator-darwin-arm64-0.0.22.zip"
  sha256 "694abb6f68323bd9c95034556047c9c069919cd6d83fd214365a2021349b1a60"
  license "MIT"

  depends_on "node"

  def install
    system "unzip", cached_download, "-d", "extracted"
    # Install the entire .app bundle in the prefix directory
    prefix.install "extracted/k8s-navigator.app"
  end

  def caveats
    <<~EOS
    To launch k8s-navigator, you can either:
    - Open Finder, navigate to #{opt_prefix}, and double-click k8s-navigator.app
    - Or use the command: open #{opt_prefix}/k8s-navigator.app

    To add k8s-navigator to your Applications folder, use the command:
      cp -r #{opt_prefix}/k8s-navigator.app /Applications

    to add k8s-navigator to your PATH, use the command:
      echo 'export PATH="#{opt_prefix}/k8s-navigator.app/Contents/MacOS:$PATH"' >> ~/.zshrc
EOS
  end

  test do
    system "#{bin}/k8s-navigator", "--version"
  end
end

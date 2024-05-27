class K8sNavigator < Formula
  desc "K8s Navigator is a tool for navigating Kubernetes clusters"
  homepage "https://github.com/yourusername/k8s-navigator"
  url "https://storage.googleapis.com/k8s-navigator-bucket/k8s-navigator-darwin-arm64-2.0.0.zip"
  sha256 "d4a5370646df0b5e6171c1ea4daf53aa7503e931d12c6b86cb87db36dcde2cd0"
  license "MIT"

  depends_on "node"

  def install
    # Extract the .app bundle
    system "unzip", cached_download, "-d", "extracted"
    # Install the entire .app bundle in the prefix directory
    prefix.install "extracted/k8s-navigator.app"
    # Create a symlink to the main executable
    bin.install_symlink prefix/"k8s-navigator.app/Contents/MacOS/k8s-navigator" => "k8s-navigator"
  end

  def post_install
    # Sign the .app bundle
    system "codesign", "--deep", "--force", "--verify", "--sign", "-", "#{prefix}/k8s-navigator.app"
  end

  def caveats
    <<~EOS
      The k8s-navigator app bundle has been installed and signed in:
        #{opt_prefix}/k8s-navigator.app

        TO add the app to your Applications folder, run:
        ln -s #{opt_prefix}/k8s-navigator.app /Applications/k8s-navigator.app

        To add the executable to your PATH, run:

        echo 'export PATH="#{opt_prefix}/k8s-navigator.app/Contents/MacOS:$PATH"' >> ~/.zshrc'
    EOS
  end

  test do
    system "#{bin}/k8s-navigator", "--version"
  end
end

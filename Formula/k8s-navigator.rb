class K8sNavigator < Formula
  desc "K8s Navigator is a tool for navigating Kubernetes clusters"
  homepage "https://github.com/yourusername/k8s-navigator"
  url "https://storage.googleapis.com/k8s-navigator-bucket/k8s-navigator-darwin-arm64-3.0.0.zip"
  sha256 "3fe6f24330b82945b9c3780e16d46fe38e7144034e157b7033a9ccd1ef77740d"
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

      To add the app to your Applications folder, you need to create a symlink manually:
        sudo ln -s #{opt_prefix}/k8s-navigator.app /Applications/k8s-navigator.app

      To add the executable to your PATH, you can add the following line to your shell configuration:
        echo 'export PATH="#{opt_prefix}/k8s-navigator.app/Contents/MacOS:$PATH"' >> ~/.zshrc

        After that, you can run the app by typing:
        k8s-navigator

        or, to run it in the background:

        k8s-navigator &
    EOS
  end

  test do
    system "#{bin}/k8s-navigator", "--version"
  end
end

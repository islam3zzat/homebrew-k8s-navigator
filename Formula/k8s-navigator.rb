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

    # Define the custom installation directory using the HOME environment variable
    home_dir = ENV["HOME"]
    app_dir = "#{home_dir}/k8s-navigator-app"
    mkdir_p app_dir

    # Debug output to verify the directory creation
    ohai "Custom installation directory:", app_dir

    # Copy the .app bundle to the custom location
    cp_r "extracted/k8s-navigator.app", app_dir

    # Debug output to verify the copy operation
    ohai "Contents of custom installation directory:"
    system "ls", "-la", app_dir

    # Create a symlink to the main executable
    bin.install_symlink "#{app_dir}/k8s-navigator.app/Contents/MacOS/k8s-navigator" => "k8s-navigator"
  end

  def caveats
    <<~EOS
      The k8s-navigator app bundle has been installed in your home directory at:
        ~/k8s-navigator-app/k8s-navigator.app
    EOS
  end

  test do
    system "#{bin}/k8s-navigator", "--version"
  end
end

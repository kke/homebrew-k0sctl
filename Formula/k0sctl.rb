class K0sctl < Formula
  desc "k0s Zero-Friction Kubernetes cluster control tool"
  homepage "https://github.com/k0sproject/k0sctl"
  head "https://github.com/k0sproject/k0sctl.git"

  depends_on "go" => [:build, :test]

  def install
    system "go", "build", *std_go_args, "-o", bin/"k0sctl", "."
  end

  test do
    system "#{bin}/k0sctl version"
  end
end

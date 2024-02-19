cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "1.11.5"
  sha256 arm: "6171683e819024f92f21f01ebf71cb2673dfee7ed967173293fd851db18c79a7", intel: "cc0879a7267e919a710e64949c4791e38ffee62d7f06c3921d5e1882ebeab419"

  url "https://github.com/PatrickDinh/algokit-cli/releases/download/v#{version}/algokit-v#{version}-macOS-#{arch}-py3.12.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/PatrickDinh/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end

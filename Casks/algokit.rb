cask "algokit" do
  arch arm: "arm64", intel: "x64"
  version "2.0.1"
  sha256 arm: "33690ed625a3e5e201c73c9d0e5cbdadd812ece8d9194d0e97ecc1be830f4eee", intel: "e4f66ac310275d9afba401941d8e6bb4a255ffd5eb1ee48a4d95973ad9592f03"

  url "https://github.com/PatrickDinh/algokit-cli/releases/download/v#{version}/algokit-#{version}-macos_#{arch}.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/PatrickDinh/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end

cask "algokit" do
  arch arm: "arm64", intel: "X64"
  version "1.12.9"
  sha256 "6934522b36ec86ca6564be50991ded268be0ea1ff921a75f35a45a0ec24f68d6"

  url "https://github.com/PatrickDinh/algokit-cli/releases/download/v#{version}/algokit-v#{version}-macOS-#{arch}-py3.12.zip"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/PatrickDinh/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end

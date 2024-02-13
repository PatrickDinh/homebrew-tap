cask "algokit" do
  arch arm: "arm64", intel: "X64"
  version "1.12.6"
  sha256 "b53cd0990253a9a7d35444562b97198feeb630d7f15fb63a4f5496e06bc7f6e7"

  url "https://github.com/PatrickDinh/algokit-cli/releases/download/v#{version}/algokit-v#{version}-macos-#{arch}-py3.12.zip"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/PatrickDinh/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end

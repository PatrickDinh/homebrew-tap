cask "algokit" do
  version "1.12.3"
  sha256 "ce8938ebbb5e6499c65ccc67beb3b88fc3d1e22543d2ee0de5422b1516705434"

  url "https://github.com/PatrickDinh/algokit-cli/releases/download/v#{version}/algokit-v#{version}-macos-py3.12.zip"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/PatrickDinh/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end

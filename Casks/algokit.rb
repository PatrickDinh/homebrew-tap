cask "algokit" do
  arch arm: "arm64", intel: "x64"
  version "2.0.2"
  sha256 arm: "7719c2928e1b7b1eb66d095aee6c7e11ddbcb4ae871fc0feaa6d483de631657f", intel: "c1a23689045b6a23fb6e0c73d89d01aaefdf5f32cd29abdc616ee05b9703b9a9"

  url "https://github.com/PatrickDinh/algokit-cli/releases/download/v#{version}/algokit-v#{version}-macos_#{arch}.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/PatrickDinh/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end

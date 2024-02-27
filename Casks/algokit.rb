cask "algokit" do
  arch arm: "arm64", intel: "x64"
  version "2.0.0"
  sha256 arm: "80152fb3c2652e011557cf632af4d753760a9f5a92385ca170bbac0dc883b238", intel: "0100f813221e99c8af5843f2eb7c545f14ee4397bb5d3a5372e01d0dc16dfb84"

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

cask "algokit" do
  arch arm: "arm64", intel: "x64"
  version "2.0.9"
  sha256 arm: "a526b7f21cdb6dc6cdd26bc6a2d6abc0565d134c0f9c3da2c57fccf1d504588f", intel: "fd6a3194b189b5055b3e4a6c46193ce246a79c8c009749cf5be8668bbe400bff"

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

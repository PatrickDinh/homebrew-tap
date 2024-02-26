cask "algokit" do
  arch arm: "ARM64", intel: "X64"
  version "2.0.1"
  sha256 arm: "f40a06545053963f3fa8a9f28fa75928243b77f55e05dd4fefdbff1adb74e390", intel: "bd414a028404dabb9cc6b32013eaaabb375a68f418e4d4e3282d3e5f55102d68"

  url "https://github.com/PatrickDinh/algokit-cli/releases/download/v#{version}/algokit-v#{version}-macOS-#{arch}.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/PatrickDinh/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end

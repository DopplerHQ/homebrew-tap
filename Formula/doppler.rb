# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your Enclave secrets"
  homepage "https://doppler.com"
  version "3.9.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/3.9.2/doppler_3.9.2_macOS_amd64.tar.gz"
    sha256 "8a05b52e38d08aac41d270587e3115fec74e15c0463bbf38b880b90501752604"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.9.2/doppler_3.9.2_linux_amd64.tar.gz"
      sha256 "327cd2d4ff90ba46484c37ad12d9b817b2c89e6c21019be07acd63d6620cba43"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/3.9.2/doppler_3.9.2_linux_arm64.tar.gz"
        sha256 "cacc2c17237a819c1398f63fd3adf00cf0ec65e22363b16ce054d7c031d69a9e"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/3.9.2/doppler_3.9.2_linux_armv6.tar.gz"
        sha256 "628af557853b3183a7389e0f250ba6336a9bd5353e51707d7b61773b1384f191"
      end
    end
  end

  def install
    bin.install "doppler"
  end

  test do
    system "#{bin}/doppler --version"
  end
end

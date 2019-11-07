# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets and config"
  homepage "https://doppler.com"
  version "0.0.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/v0.0.9/cli_0.0.9_macOS_64-bit.tar.gz"
    sha256 "5f3b26805a3d8baf69637e9a1f1dfa1786a3b2439ffc7e237e4d25e8341b1002"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/v0.0.9/cli_0.0.9_Linux_64-bit.tar.gz"
      sha256 "aba6385b3e561d7442c7f04bcc6bb6e85894812c0418987898c3a08a5ba125f6"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/v0.0.9/cli_0.0.9_Linux_arm64.tar.gz"
        sha256 "6f916fb8082d8436be95dfe38936180f55f1f86eb55da13d8e8a94377d16213e"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/v0.0.9/cli_0.0.9_Linux_armv6.tar.gz"
        sha256 "770dfd0c41a20bd075cd5c5a23922bd585570eb61c9f867d2e9c27a747da9154"
      end
    end
  end

  def install
    bin.install "doppler"
  end
end
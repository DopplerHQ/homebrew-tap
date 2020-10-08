# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets"
  homepage "https://doppler.com"
  version "3.14.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/3.14.3/doppler_3.14.3_macOS_amd64.tar.gz"
    sha256 "49366653dea626170f171ac749d6fd968c2d539d008bc34f702434f3ddb6cc81"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.14.3/doppler_3.14.3_linux_amd64.tar.gz"
      sha256 "b0482cdc7410a3ee13865193fdc8865a63d539e48d88c61db0bf51058d27c479"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/3.14.3/doppler_3.14.3_linux_arm64.tar.gz"
        sha256 "d9530b7f83df65d95df82ead9dcfdc4bbdc80dc35a08d1c91c05962efb72ae4f"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/3.14.3/doppler_3.14.3_linux_armv6.tar.gz"
        sha256 "272523957981d9841346b0346ef1bcc59d8b02fee406e8402adeb3953824da5a"
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

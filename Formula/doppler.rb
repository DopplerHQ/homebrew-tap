# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets"
  homepage "https://doppler.com"
  version "3.66.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DopplerHQ/cli/releases/download/3.66.0/doppler_3.66.0_macOS_arm64.tar.gz"
      sha256 "069e0b6f055e481cd8a8b5ca74db6ec295a54445fab4c497d07d56cf52a32c44"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.66.0/doppler_3.66.0_macOS_amd64.tar.gz"
      sha256 "e6db49def64f7c3762e185c31fd9d70eb7d4045ccce22f5683a36a0c350b6f40"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/DopplerHQ/cli/releases/download/3.66.0/doppler_3.66.0_linux_armv6.tar.gz"
      sha256 "bef871e9685ebd7046a3226a051dcd3346deaff0c3c3e4907f936122a9e11a4c"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DopplerHQ/cli/releases/download/3.66.0/doppler_3.66.0_linux_arm64.tar.gz"
      sha256 "567a096c51f6e63b524481a4ea144b01767f836987bd0e7289dbf28a9efeceb4"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.66.0/doppler_3.66.0_linux_amd64.tar.gz"
      sha256 "abd61e5051be5127eadc3ffd003ebe78c21d0fc4a8c98f7cfa508f46f3b4fe13"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
  end

  test do
    system "#{bin}/doppler --version"
  end
end

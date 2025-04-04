
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sdpc106019 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.60-19"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://ssw-artifacts.s3.us-west-2.amazonaws.com/sdpc/prod/darwin/arm64/sdpc-darwin-arm64-1.0.60-19.zip"
      sha256 "ad6d831f7c3e68fe457216936a60376cb949d9ec34c4e0cb93b693062749d887"

      def install
        bin.install "sdpc-darwin-arm64" => "sdpc"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/sdpc", "-h")
        (bash_completion/"sdpc").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/sdpc", "-h")
        (zsh_completion/"_sdpc").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://ssw-artifacts.s3.us-west-2.amazonaws.com/sdpc/prod/darwin/amd64/sdpc-darwin-amd64-1.0.60-19.zip"
      sha256 "12433fc7429be403ad0ed0e4cc2042519300183c761d828dc48a92739560d27f"

      def install
        bin.install "sdpc-darwin-amd64" => "sdpc"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/sdpc", "-h")
        (bash_completion/"sdpc").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/sdpc", "-h")
        (zsh_completion/"_sdpc").write output
      end
    end
  end

  test do
    system "#{bin}/sdpc -h"
  end
end



# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SdpcStage01161stage10551 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "0.1.161-stage-1.0.55.1"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/arm64/sdpc-darwin-arm64-0.1.161-stage-1.0.55.1.zip"
      sha256 "08e2abf410991ae5a6a40bc793611c01974684c064061b4cf0325a6207b1dc55"

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
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/amd64/sdpc-darwin-amd64-0.1.161-stage-1.0.55.1.zip"
      sha256 "b187f81e51bc06341b90cfd1f05fafb1596137e78a850dec8e9d9a8cbf84ce05"

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


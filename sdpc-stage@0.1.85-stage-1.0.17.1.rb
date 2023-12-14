
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SdpcStage0185stage10171 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "0.1.85-stage-1.0.17.1"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/arm64/sdpc-darwin-arm64-0.1.85-stage-1.0.17.1.zip"
      sha256 "fff061a9495bce2f28fa8f7cb574c93d0fe05b725e5cf82ed55ea07bf062dd19"

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
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/amd64/sdpc-darwin-amd64-0.1.85-stage-1.0.17.1.zip"
      sha256 "7baa9a33a9c61055af50626454d8c8de33a388fbe2ac013cb78b3fbbd81e7d72"

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

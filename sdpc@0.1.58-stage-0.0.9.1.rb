
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sdpc0158stage0091 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "0.1.58-stage-0.0.9.1"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/arm64/sdpc-darwin-arm64-0.1.58-stage-0.0.9.1.zip"
      sha256 "b42e3938cf5a3ff0422c38b326de81cffa91eecc266df37db23f7fb5ac3ddbb6"

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
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/amd64/sdpc-darwin-amd64-0.1.58-stage-0.0.9.1.zip"
      sha256 "3878ae0bae6c64d060abaec283fc4370478e43c0b119c6cd0b98bec8d82c7658"

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


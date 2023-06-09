
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sdpc0152stage00513 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "0.1.52-stage-0.0.5.1.3"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/arm64/sdpc-darwin-arm64-0.1.52-stage-0.0.5.1.3.zip"
      sha256 "f8afe79a296e48c232a1894e6d40a9d263b419a678a1287f639646bf5a16ea76"

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
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/amd64/sdpc-darwin-amd64-0.1.52-stage-0.0.5.1.3.zip"
      sha256 "3338c284c76fdf899ec15f67c773e48d02ad76daaa6afbb566fcfa83e5c5af25"

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


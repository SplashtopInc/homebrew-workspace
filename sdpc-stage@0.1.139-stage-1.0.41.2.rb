
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SdpcStage01139stage10412 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "0.1.139-stage-1.0.41.2"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/arm64/sdpc-darwin-arm64-0.1.139-stage-1.0.41.2.zip"
      sha256 "3e428e9fabbb1c23c7cbbea2f35faa915026cba13dc682b652780f3b8010bebd"

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
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/amd64/sdpc-darwin-amd64-0.1.139-stage-1.0.41.2.zip"
      sha256 "0ef22953e8ae89f7863ca2ea3f7d90610b4995d9bd43b77b0b574eedbd9127f6"

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


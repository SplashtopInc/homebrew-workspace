
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectorStage1018001 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.18.001"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/connector/stage/darwin/arm64/connector-arm64-0.1.89-ztw-stage-1.0.18.001"
      sha256 "b0af22725460b99bcef45d2ce2d62bbe727356963dda0ad7ab2166e0c6e1369c"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/connector/stage/darwin/amd64/connector-amd64-0.1.89-ztw-stage-1.0.18.001"
      sha256 "17fac8b0d31520f52f09312045fe24cfee1ff99c41f973518afcd1f9c7d65349"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


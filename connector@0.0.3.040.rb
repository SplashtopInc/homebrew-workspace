
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector003040 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "0.0.3.040"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/connector/stage/darwin/arm64/connector-arm64-stage-0.0.3.040"
      sha256 "a4a30c58f3592d30f32df3cbb6743b8bcb41ede5a3b3d1754979bebb385fe1e6"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/connector/stage/darwin/amd64/connector-amd64-stage-0.0.3.040"
      sha256 "107bd1b85b0ed3ac833206746750894f721cf2fe1ffd85ce64a8f53f69767b33"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end

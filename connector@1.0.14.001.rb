
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector1014001 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.14.001"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/connector/stage/darwin/arm64/connector-arm64-0.1.81-ztw-stage-1.0.14.001"
      sha256 "49654f257a25b1f89dddecff4ab775959a56787f31f81b4e61bebeda561be4ad"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/connector/stage/darwin/amd64/connector-amd64-0.1.81-ztw-stage-1.0.14.001"
      sha256 "6fd03752f75ff44fa8bf787789cd1cea6540356ef85839c1afbbe593e6aaa325"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


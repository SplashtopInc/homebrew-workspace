
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectorStage1042001 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.42.001"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.stage.ztw.splashtop.com/connector/stage/darwin/arm64/connector-arm64-1.0.27-137-ztw-stage-1.0.42.001"
      sha256 "e94ecbbe6ab5bfcc4b3e5c932600962cc97f6627b9979b2c4bb5be9771d95573"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stage.ztw.splashtop.com/connector/stage/darwin/amd64/connector-amd64-1.0.27-137-ztw-stage-1.0.42.001"
      sha256 "58617520f7edb8bedcb4ed6804234923db13933799a0ba9d9357c72d50b239c9"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


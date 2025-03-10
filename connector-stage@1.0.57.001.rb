
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectorStage1057001 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.57.001"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.stage.ztw.splashtop.com/connector/stage/darwin/arm64/connector-arm64-1.0.27-165-ztw-stage-1.0.57.001"
      sha256 "748952aa97c8de7452896b4f469993493cb83bd2c7220cc62d1cf28c041808d9"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stage.ztw.splashtop.com/connector/stage/darwin/amd64/connector-amd64-1.0.27-165-ztw-stage-1.0.57.001"
      sha256 "3369b78f63fe90bc490e3860ab7a2888517dd1c6cb65f5a597a8300a0fadda66"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


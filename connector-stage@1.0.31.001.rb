
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectorStage1031001 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.31.001"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.stage.ztw.splashtop.com/connector/stage/darwin/arm64/connector-arm64-1.0.27-123-ztw-stage-1.0.31.001"
      sha256 "14bda450640a02cb98739eb9017595b95001ef63d212403a3cff57defacd7244"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stage.ztw.splashtop.com/connector/stage/darwin/amd64/connector-amd64-1.0.27-123-ztw-stage-1.0.31.001"
      sha256 "0453f7e4341fb783e67833f2069e178a5f1b7f99867277c8c598213cda4f9f8c"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end



# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectorStage1058001 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.58.001"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.stage.ztw.splashtop.com/connector/stage/darwin/arm64/connector-arm64-1.0.27-166-ztw-stage-1.0.58.001"
      sha256 "f4ad14bc351d8a0e46f0031f6ebd9d4c2f93c621d894f24bcf5884d9b2139aba"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stage.ztw.splashtop.com/connector/stage/darwin/amd64/connector-amd64-1.0.27-166-ztw-stage-1.0.58.001"
      sha256 "cb8da789717154e479e1822df9e4e1242e3db9eca032c5b8408db747dc51925a"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


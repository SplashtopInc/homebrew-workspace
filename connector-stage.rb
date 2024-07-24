
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectorStage < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.46.001"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.stage.ztw.splashtop.com/connector/stage/darwin/arm64/connector-arm64-1.0.27-141-ztw-stage-1.0.46.001"
      sha256 "167f23d61f19c123c92959fcf758ecb5171da3feff9e293c177b7a400006d291"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://download.stage.ztw.splashtop.com/connector/stage/darwin/amd64/connector-amd64-1.0.27-141-ztw-stage-1.0.46.001"
      sha256 "c31b94079d3b3787bc37ddae2122cb44b367bfbc0a35889e5566c7c72e55ae47"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


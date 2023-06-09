
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector004008 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "0.0.4.008"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/connector/stage/darwin/arm64/connector-arm64-stage-0.0.4.008"
      sha256 "b0da350fc3e8e306fc31a414cbb0b5eb033b1364c39a8424a4a329de2cc0557e"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/connector/stage/darwin/amd64/connector-amd64-stage-0.0.4.008"
      sha256 "7d51a4d6ee0e9ba34e9a739271017372621457bb5a94edba6c7df6466695377b"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


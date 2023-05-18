
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector003037 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "0.0.3.037"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/connector/stage/darwin/arm64/connector-arm64-stage-0.0.3.037"
      sha256 "08e6dbeeb22d152457b5eb0a468b442cecb76fd0683d452eb4f1407758208b4e"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/connector/stage/darwin/amd64/connector-amd64-stage-0.0.3.037"
      sha256 "68c535571eb74c279edf093fa77869e3cbed8846ab2ef42286373c7fbe5f905d"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


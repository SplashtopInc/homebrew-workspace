
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector102340 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.23-40"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://ssw-artifacts.s3.us-west-2.amazonaws.com/connector/prod/darwin/arm64/connector-arm64-1.0.23-40"
      sha256 "66b34ac9d0368a25b0b529ef6d812eab48b4fa2ed79209d6fbe2887913634898"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://ssw-artifacts.s3.us-west-2.amazonaws.com/connector/prod/darwin/amd64/connector-amd64-1.0.23-40"
      sha256 "3d82ff7d6d07270d3b1ccca216254529628fc030ffbff7d4c0dd87eef713d54e"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


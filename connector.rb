
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.21-21"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://ssw-artifacts.s3.us-west-2.amazonaws.com/connector/prod/darwin/arm64/connector-arm64-1.0.21-21"
      sha256 "8ffa21bd803a815eecf0ba0af9578b6aa7b5598d6c1333f5c25b6b2bf207e163"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://ssw-artifacts.s3.us-west-2.amazonaws.com/connector/prod/darwin/amd64/connector-amd64-1.0.21-21"
      sha256 "e0c33a159f9e04536d88d4c1a60b3a1fb29337cf9ff1428990825f432b2f7411"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


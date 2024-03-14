
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.27-30"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.ssw.splashtop.com/connector/prod/darwin/arm64/connector-arm64-1.0.27-30"
      sha256 "842d4301cd3b72a409bce8e1929d90da56aaa10a59921a36abb9a60b6f8a2362"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://download.ssw.splashtop.com/connector/prod/darwin/amd64/connector-amd64-1.0.27-30"
      sha256 "5e1bf9a71b2e63261f0778e2fd620e9170f6ae16ccce75314b5b5a31a548f488"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


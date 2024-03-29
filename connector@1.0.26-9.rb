
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector10269 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.26-9"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.ssw.splashtop.com/connector/prod/darwin/arm64/connector-arm64-1.0.26-9"
      sha256 "180e313fcd733af909db5061e2b92284817b7b44fc5dfe78d7f82c60d3ebbed2"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://download.ssw.splashtop.com/connector/prod/darwin/amd64/connector-amd64-1.0.26-9"
      sha256 "05aa8ebf138258cb35132a750c5f8e5d61a1656f98698b342c93203016db1ebe"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


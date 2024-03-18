
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector102732 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.27-32"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.ssw.splashtop.com/connector/prod/darwin/arm64/connector-arm64-1.0.27-32"
      sha256 "24d33a4ff40b5083fd241434645acaf4ea53c5d971d7c8543439401c394d2d61"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://download.ssw.splashtop.com/connector/prod/darwin/amd64/connector-amd64-1.0.27-32"
      sha256 "131f30f14a637be834d7fa495ac4aa0c65bd1c47a287207d4f47f10c2deeb0dd"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end

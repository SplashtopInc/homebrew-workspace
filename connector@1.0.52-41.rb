
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector105241 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.52-41"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.ssw.splashtop.com/connector/prod/darwin/arm64/connector-arm64-1.0.52-41"
      sha256 "1bcca227f0b33295e41d51ee8185a26792441dc3487c1882ebb345d32d9122b3"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://download.ssw.splashtop.com/connector/prod/darwin/amd64/connector-amd64-1.0.52-41"
      sha256 "ebb6b81dfd713631ecf7bf1b9f094ec8f40d1e864d6a9af59d99c230d10c0e42"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


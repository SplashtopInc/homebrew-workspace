
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sdpc105439 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.54-39"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://ssw-artifacts.s3.us-west-2.amazonaws.com/sdpc/prod/darwin/arm64/sdpc-darwin-arm64-1.0.54-39.zip"
      sha256 "1353fca71b2a9d385a286790bae1f76a122be4972608e8602f18368839bf25cf"

      def install
        bin.install "sdpc-darwin-arm64" => "sdpc"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/sdpc", "-h")
        (bash_completion/"sdpc").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/sdpc", "-h")
        (zsh_completion/"_sdpc").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://ssw-artifacts.s3.us-west-2.amazonaws.com/sdpc/prod/darwin/amd64/sdpc-darwin-amd64-1.0.54-39.zip"
      sha256 "ff06cbdbe515d5c4b559305d01b146cf894f19fe88f3bb793e743ae1875b1ad6"

      def install
        bin.install "sdpc-darwin-amd64" => "sdpc"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/sdpc", "-h")
        (bash_completion/"sdpc").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/sdpc", "-h")
        (zsh_completion/"_sdpc").write output
      end
    end
  end

  test do
    system "#{bin}/sdpc -h"
  end
end


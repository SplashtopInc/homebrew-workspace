
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sdpc < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.56-46"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://ssw-artifacts.s3.us-west-2.amazonaws.com/sdpc/prod/darwin/arm64/sdpc-darwin-arm64-1.0.56-46.zip"
      sha256 "60ba544da99e27070f4a0ac3daf13381f91321aee7e403ebada0efcdb3c18a5b"

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
      url "https://ssw-artifacts.s3.us-west-2.amazonaws.com/sdpc/prod/darwin/amd64/sdpc-darwin-amd64-1.0.56-46.zip"
      sha256 "c6c8a201da8b4a947c37ac9acbe7cf6505fca0992a51669327aa40bf54f06c2b"

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



# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Connector105646 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/SplashtopInc/homebrew-workspace"
  version "1.0.56-46"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://download.ssw.splashtop.com/connector/prod/darwin/arm64/connector-arm64-1.0.56-46"
      sha256 "80d9bf5b46653d042f8ab7cb53e44e4bc1ca3c4605b76361d5c34d56e0414ec4"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
    if Hardware::CPU.intel?
      url "https://download.ssw.splashtop.com/connector/prod/darwin/amd64/connector-amd64-1.0.56-46"
      sha256 "aac57cb649f6646301752be0aca3b3bd7e54d8c54d8987bbc8c04276559048f0"

      def install
        bin.install Dir["*"].first => "connector"
      end
    end
  end

  test do
    system "#{bin}/connector -h"
  end
end


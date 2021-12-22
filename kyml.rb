class Kyml < Formula
  desc "A CLI, which helps you to work with and deploy plain Kubernetes YAML files."
  homepage "https://github.com/frigus02/kyml"
  license "MIT"
  version "20210610"

  if OS.mac? && Hardware::CPU.arm?
    @@bin_name = "kyml_#{version}_darwin_arm64"
    sha256 "e823288d23c95eab0454d60f02d1d10c59f016790c26c2723a9f313b341f4514"
  elsif OS.mac?
    @@bin_name = "kyml_#{version}_darwin_amd64"
    sha256 "d555393a079c2ba139d704dd16a3aa6fc7137ba25648d50663fbd2365576f3f9"
  elsif OS.linux?
    @@bin_name = "kyml_#{version}_linux_amd64"
    sha256 "58be09ad7d971412fdb96ffcb7fd6abcfd498f95d8c6cde50e812562d835c918"
  end
  url "https://github.com/frigus02/kyml/releases/download/v#{version}/#{@@bin_name}"

  def install
    bin.install @@bin_name => "kyml"
  end
end

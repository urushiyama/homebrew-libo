class Libo < Formula
  desc "Fast access to LICENSE boilerplates"
  homepage "https://github.com/urushiyama/libo/"
  url "https://github.com/urushiyama/libo/archive/v1.0.2.tar.gz"
  sha256 "9d5c94f04a2756bd1263285074790bce3d0eccb04be82c37317643a57c853a6c"

  def install
    bin.install 'libo'
  end

  test do
    system "#{bin}/libo", "update"
    assert_includes shell_output("#{bin}/libo dump MIT"), "MIT License"
  end
end

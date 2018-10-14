class PhpBuild < Formula
  desc "Builds PHP so that multiple versions can be used side by side"
  homepage "https://github.com/php-build/php-build"
  url "https://github.com/madumlao/php-build/archive/osx-zlib.zip"
  sha256 "310f0a25252870fc4d1516f71c630f5ce5b3647687a2d0355c6fb49174fd163b"
  head "https://github.com/madumlao/php-build.git"

  bottle :unneeded

  depends_on "autoconf"
  depends_on "pkg-config"
  depends_on "openssl"
  depends_on "libxml2"

  def install
    ENV["PREFIX"] = prefix
    system "./install.sh"
  end

  test do
    assert_match "5.6.38", shell_output("#{bin}/php-build --definitions")
    assert_match "7.2.10", shell_output("#{bin}/php-build --definitions")
  end
end

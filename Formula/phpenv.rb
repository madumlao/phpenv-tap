class Phpenv < Formula
  desc "Simple PHP version management"
  homepage "https://github.com/phpenv/phpenv#readme"
  head "https://github.com/phpenv/phpenv.git"

  depends_on "php-build" => :recommended

  def install
    if build.head?
      # Record exact git revision for `phpenv --version` output
      git_revision = `git rev-parse --short HEAD`.chomp
      inreplace "libexec/phpenv---version", /^(version=)"([^"]+)"/,
                                           %Q(\\1"\\2-g#{git_revision}")
    end

    prefix.install ["bin", "completions", "libexec"]
  end

  test do
    shell_output("eval \"$(#{bin}/phpenv init -)\" && phpenv versions")
  end
end

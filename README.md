# phpenv-tap
Homebrew tap for installing [phpenv](https://github.com/phpenv/phpenv), [php-build](https://github.com/php-build/php-build), and related projects.

This tap is under active development, with formulae in beta status.

## How do I install these formulae?
### Installing the tap first
To install the tap without installing any formula, run:

~~~ sh
$ brew tap madumlao/phpenv-tap
~~~

Afterwards, homebrew will be able to install and run related formula:

~~~ sh
$ brew install php-build
$ brew install phpenv
~~~

### Installing from the tap directly
To install formula from this tap directly, run:

~~~ sh
$ brew install madumlao/phpenv-tap/php-build
~~~

This will install the tap in the background, so future runs of `brew install` should no longer need the `madumlao/phpenv-tap` before the formula name.

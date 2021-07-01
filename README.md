# Homebrew Casks

[![Software License][ico-license]](LICENSE.md)
[![Repo Size][ico-github-repo-size]][link-github-repo-size]

A custom cask collection for [Homebrew][link-homebrew].

# Install

Via Homebrew

```shell
# For all casks
$ brew tap owenvoke/casks

# For a single cask
$ brew install --cask owenvoke/casks/[package]

# For a single cask with no repository
$ brew install --cask "https://raw.githubusercontent.com/owenvoke/homebrew-casks/main/Casks/[package].rb"
```

## Available Casks

- [Instatus Out](https://instatus.com/out) ([source](./Casks/instatus-out.rb))

## Deprecated Casks

- ~~[HELO](https://usehelo.com) ([source](./Casks/helo.rb))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/cask/helo))
- ~~[Iconset](https://iconset.io) ([source](./Casks/iconset.rb))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/cask/iconset))
- ~~[Invoker](https://invoker.dev) ([source](./Casks/invoker.rb)))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/cask/invoker))
- ~~[Tinkerwell](https://tinkerwell.app) ([source](./Casks/tinkerwell.rb))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/cask/tinkerwell))
- ~~[Tint](https://beyondco.de/software/tint)~~ ([source](./Casks/tint.rb)) (Moved to [Homebrew Core](https://formulae.brew.sh/cask/tint))

## Available Formulae

- [Lambo](https://github.com/tighten/lambo) ([source](./Formula/lambo.rb))
- [Local PHP Security Checker](https://github.com/fabpot/local-php-security-checker) ([source](./Formula/local-php-security-checker.rb))
- [Oh Dear CLI](https://github.com/nunomaduro/ohdear-cli) ([source](./Formula/ohdear-cli.rb))
- [Takeout](https://github.com/tighten/takeout) ([source](./Formula/takeout.rb))
- [Tea](https://gitea.com/gitea/tea) ([source](./Formula/tea.rb))

## Updates

Casks and formulae in this tap are periodically checked for updates, and updates are applied manually.

To check for new updates for any of the casks or formulae, run the following command:

```shell
brew livecheck --tap owenvoke/casks
```

If an update is available, you can open a pull request using the `brew bump-cask-pr` command.

## Credits

- [Owen Voke][link-author]
- [All Contributors][link-contributors]

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.

[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square
[ico-github-repo-size]: https://img.shields.io/github/repo-size/owenvoke/homebrew-casks?style=flat-square

[link-github-repo-size]: https://github.com/owenvoke/homebrew-casks/tree/main/Casks
[link-homebrew]: https://brew.sh
[link-author]: https://github.com/owenvoke
[link-contributors]: ../../contributors

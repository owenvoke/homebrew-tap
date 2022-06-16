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

- [Laravel Shift Workbench](https://laravelshift.com/workbench) ([source](./Casks/laravelshift-workbench.rb))

## Available Formulae

- [Lambo](https://github.com/tighten/lambo) ([source](./Formula/lambo.rb))
- [Local PHP Security Checker](https://github.com/fabpot/local-php-security-checker) ([source](./Formula/local-php-security-checker.rb))
- [Takeout](https://github.com/tighten/takeout) ([source](./Formula/takeout.rb))
- [Tea](https://gitea.com/gitea/tea) ([source](./Formula/tea.rb))

## Deprecated Casks

- ~~[Graphlint](https://github.com/worksome/graphlint) ([source](./Formula/graphlint.rb))~~ (Moved to [Worksome Tap](https://github.com/worksome/homebrew-tap))
- ~~[HELO](https://usehelo.com) ([source](https://github.com/owenvoke/homebrew-casks/blob/08b4dc671f97b4887d082bed528d9900cc007030/Casks/helo.rb))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/cask/helo))
- ~~[Iconset](https://iconset.io) ([source](https://github.com/owenvoke/homebrew-casks/blob/4ff05febaad6cac21e448140fd0787dacd1cee73/Casks/iconset.rb))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/cask/iconset))
- ~~[Instatus Out](https://instatus.com/out) ([source](https://github.com/owenvoke/homebrew-casks/blob/a1df9f6d57dfbb3e8e7c6483af7c437613bf45af/Casks/instatus-out.rb))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/cask/instatus-out))
- ~~[Invoker](https://invoker.dev) ([source](https://github.com/owenvoke/homebrew-casks/blob/5113f4424d0dd7e39289cdf005a25d1846cc9fc2/Casks/invoker.rb))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/cask/invoker))
- ~~[Oh Dear CLI](https://github.com/ohdearapp/ohdear-cli) ([source](https://github.com/owenvoke/homebrew-casks/blob/370f98ec1e0f7e4f488146a1b2c06fa22d78209c/Formula/ohdear-cli.rb))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/formula/ohdear-cli))
- ~~[Tinkerwell](https://tinkerwell.app) ([source](https://github.com/owenvoke/homebrew-casks/blob/08b4dc671f97b4887d082bed528d9900cc007030/Casks/tinkerwell.rb))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/cask/tinkerwell))
- ~~[Tint](https://beyondco.de/software/tint) ([source](https://github.com/owenvoke/homebrew-casks/blob/8ffb37a36f6aeb8025c444db4cd52becb3c5a563/Casks/tint.rb))~~ (Moved to [Homebrew Core](https://formulae.brew.sh/cask/tint))

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

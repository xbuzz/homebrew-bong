# homebrew-bong

Homebrew tap for [bong](https://github.com/xbuzz/bong) — watch a CI/CD pipeline. ding when done.

## install

```sh
brew install xbuzz/bong/bong
```

or, two steps:

```sh
brew tap xbuzz/bong
brew install bong
```

`glab` is pulled in as a dependency.

## bumping

after a new release on `xbuzz/bong`, update `Formula/bong.rb`:

```sh
ver=v0.3.0
sha=$(curl -sL "https://github.com/xbuzz/bong/archive/refs/tags/${ver}.tar.gz" | shasum -a 256 | awk '{print $1}')
sed -i '' -E "s|/tags/v[0-9.]+\.tar\.gz|/tags/${ver}.tar.gz|;  s|sha256 \"[0-9a-f]+\"|sha256 \"${sha}\"|" Formula/bong.rb
```

then commit and push.

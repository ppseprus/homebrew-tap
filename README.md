# ppseprus/homebrew-tap

A personal [Homebrew](https://brew.sh) tap.

## Formulae

- **[git-exclude](https://github.com/ppseprus/git-exclude)** — manage `.git/info/exclude` from the terminal, as `git exclude`. Keeps your own notes and working files in a repository without committing them.

## How do I install these formulae?

```sh
brew trust --formula ppseprus/tap/<formula>
brew install ppseprus/tap/<formula>
```

_Note: Since version 6.0.0, Homebrew ignores formulae from a non-official tap until you trust it, because reading one means running Ruby that came from it. Without the first line the second one fails rather than prompting. `brew trust ppseprus/tap` trusts the whole tap instead, including anything added to it later; [the documentation](https://docs.brew.sh/Tap-Trust) prefers the narrower form above._

Or tap once and then install by name:

```sh
brew tap ppseprus/tap

brew trust --formula ppseprus/tap/<formula>
brew install <formula>
```

Or in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`, with the trust granted beforehand:

```ruby
tap "ppseprus/tap"
brew "<formula>"
```

## Updates

`brew update` fetches this repository, so a formula bump reaches you on the next update; `brew upgrade git-exclude` then installs it. There are no tags or releases here, because nothing in Homebrew can ask for one. The version that matters is the tag named in the formula's `url`, and this repository's commit history is its record.

## Documentation

`brew help`, `man brew`, or [Homebrew's documentation](https://docs.brew.sh).

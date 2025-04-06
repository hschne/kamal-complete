<div align="center">

# Kamal Complete

### Complete shell completions for [Kamal](https://kamal-deploy.org/) 💎

https://github.com/user-attachments/assets/bc746bb9-cbcb-4567-b42a-49808d889641

Kamal provides many commands and options, and shell completions help you find the right ones.

</div>

## Installation

### Manual

Download ZSH completions to some location on your `fpath`. For example:

```
curl -O https://github.com/hschne/kamal-complete/blob/main/completions/kamal.zsh > /usr/share/zsh/site-functions/_kamal
```

### [Zinit](https://github.com/zdharma-continuum/zinit)

```zsh
zi ice lucid wait as'completion' blockf has'kamal' mv'kamal.zsh -> _kamal'
zi snippet https://github.com/hschne/kamal-complete/blob/main/completions/kamal.zsh
```

### [ZI](https://wiki.zshell.dev/)

```zsh
zi ice lucid wait as'completion' blockf has'kamal' mv'kamal.zsh -> _kamal'
zi snippet https://github.com/hschne/kamal-complete/blob/main/completions/kamal.zsh
```

## Contributing

Thank you for contributing! :heart:

We welcome all support, whether on bug reports, code, design, reviews, tests, documentation, translations, or just feature requests.

Please use [GitHub issues](https://github.com/hschne/kamal-complete/issues) to submit bugs or feature requests.

## LICENSE

The gem is available as open-source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

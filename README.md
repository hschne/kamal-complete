<div align="center">

# Kamal Complete

### Complete Shell Completions for Kamal ⌨️

https://github.com/user-attachments/assets/bc746bb9-cbcb-4567-b42a-49808d889641

 [Kamal](https://kamal-deploy.org/) provides many commands and options, and shell completions help you find the right ones.

</div>

## Installation

### Bash

Download the bash completions and source them in your `.bashrc`. For example:

```bash
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/hschne/kamal-complete/refs/heads/main/completions/kamal.bash > ~/.local/share/bash-completion/kamal-completion.bash
echo 'source "$HOME/.local/share/bash-completion/kamal-completion.bash"' >> $HOME/.bashrc
```

### ZSH

#### Manual

Download ZSH completions as `_kamal` to some location on your `$fpath`. For example:

```bash
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/hschne/kamal-complete/refs/heads/main/completions/kamal.zsh > ~/.local/share/zsh-completion/_kamal
```

#### Plugin Managers

You can download and manage Kamal completions for ZSH using various plugin managers.

#### [Zinit](https://github.com/zdharma-continuum/zinit) / [ZI](https://wiki.zshell.dev/)

```zsh
zi ice lucid wait as'completion' blockf has'kamal' mv'kamal.zsh -> _kamal'
zi snippet https://github.com/hschne/kamal-complete/blob/main/completions/kamal.zsh
```

### Fish

Download the Fish completions to a location on your completion path.

```bash
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/hschne/kamal-complete/refs/heads/main/completions/kamal.fish > ~/.config/fish/completions/kamal.fish
```

## Contributing

Thank you for contributing! :heart:

We welcome all support, whether on bug reports, code, design, reviews, tests, documentation, translations, or just feature requests.

Please use [GitHub issues](https://github.com/hschne/kamal-complete/issues) to submit bugs or feature requests.

## License

The gem is available as open-source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

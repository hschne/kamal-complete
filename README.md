<div align="center">

# Kamal Complete

### Complete shell completions for Kamal 💎

</div>

This repository provides complete shell completions for [Kamal](https://kamal-deploy.org/). Kamal provides lots of commands and options. Shell completions help you find the right ones.

## Installation

### Manual

Write the completions to a completion path.

````
curl -O https://github.com/hschne/kamal-complete/blob/main/completions/kamal.zsh > /usr/share/zsh/site-functions/_kamal


### [ZI](https://wiki.zshell.dev/)

```zsh
zi ice lucid wait as'completion' blockf has'kamal' mv'kamal.zsh -> _kamal'
zi snippet https://github.com/hschne/kamal-complete/blob/main/completions/kamal.zsh
````

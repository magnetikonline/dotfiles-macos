# dotfiles - macOS

- [Highlights](#highlights)
- [Editor font](#editor-font)
- [Visual Studio Code extensions](#visual-studio-code-extensions)

## Highlights

- A [`.bash_profile`](.bash_profile) fixing a few annoying macOS toolchain items, such as:
	- `BASH_SILENCE_DEPRECATION_WARNING`.
	- `COPYFILE_DISABLE`.
	- Nicer `ls` colors.
- Useful [Bash aliases](.bash_profile#L53-L72).
- `.gitconfig`:
	- [aliases](.gitconfig#L41-L62).
	- Work/personal [profile switching](.gitconfig#L64-L65) based on repository path.
	- [userdiff](.gitattributes-global) config.
- [Visual Studio Code](https://code.visualstudio.com/) user [settings](app/vscode).

## Editor font

[JetBrains Mono](https://github.com/JetBrains/JetBrainsMono), configured with [Visual Studio Code](app/vscode/settings.json#L7-L9).

## Visual Studio Code extensions

```sh
$ code --list-extensions --show-versions
darkriszty.markdown-table-prettify@3.6.0
EditorConfig.EditorConfig@0.16.4
golang.go@0.31.0
hashicorp.terraform@2.19.0
ms-azuretools.vscode-docker@1.19.0
ms-python.python@2022.0.1814523869
ms-python.vscode-pylance@2022.2.0
ms-toolsai.jupyter@2022.1.1001775990
ms-toolsai.jupyter-keymap@1.0.0
ms-toolsai.jupyter-renderers@1.0.6
PKief.material-icon-theme@4.12.1
streetsidesoftware.code-spell-checker@2.1.6
william-voyek.vscode-nginx@0.7.2
```

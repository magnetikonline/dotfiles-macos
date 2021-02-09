# dotfiles - macOS

- [Highlights](#highlights)
- [Editor font](#editor-font)
- [Visual Studio Code extensions](#visual-studio-code-extensions)

## Highlights

- A [`.bash_profile`](.bash_profile) fixing a few annoying macOS toolchain items, such as:
	- `BASH_SILENCE_DEPRECATION_WARNING`.
	- `COPYFILE_DISABLE`.
	- Nicer `ls` colors.
- Useful [Bash aliases](.bash_profile#L59-L78).
- `.gitconfig`:
	- [aliases](.gitconfig#L41-L62).
	- Work/personal [profile switching](.gitconfig#L64-L65) based on repository path.
	- [userdiff](.gitattributes-global) config.
- [Visual Studio Code](https://code.visualstudio.com/) user [settings](app/vscode).

## Editor font

[JetBrains Mono](https://github.com/JetBrains/JetBrainsMono), configured with [Visual Studio Code](app/vscode/settings.json#L7-L9).

## Visual Studio Code extensions

```sh
$ vsc --list-extensions --show-versions
darkriszty.markdown-table-prettify@3.2.0
EditorConfig.EditorConfig@0.16.4
golang.go@0.22.1
hashicorp.terraform@2.5.0
ms-azuretools.vscode-docker@1.9.1
ms-python.python@2021.1.502429796
ms-python.vscode-pylance@2021.2.0
ms-toolsai.jupyter@2020.12.414227025
streetsidesoftware.code-spell-checker@1.10.2
```

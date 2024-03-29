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
	- [aliases](.gitconfig#L42-L65).
	- Work/personal [profile switching](.gitconfig#L64-L65) based on repository path.
	- [userdiff](.gitattributes-global) config.
- [Visual Studio Code](https://code.visualstudio.com/) user [settings](app/vscode).
- [Rectangle](https://github.com/rxhanson/Rectangle) user [settings](app/rectangle/RectangleConfig.json).

## Editor font

[JetBrains Mono](https://github.com/JetBrains/JetBrainsMono), configured with [Visual Studio Code](app/vscode/settings.json#L7-L9).

## Visual Studio Code extensions

```sh
$ vsc --list-extensions --show-versions
darkriszty.markdown-table-prettify@3.6.0
dbaeumer.vscode-eslint@2.2.6
EditorConfig.EditorConfig@0.16.4
golang.go@0.36.0
hashicorp.terraform@2.24.3
ms-azuretools.vscode-docker@1.22.0
ms-python.black-formatter@2022.7.13061128
ms-python.isort@2022.5.13121010
ms-python.python@2022.18.1
ms-python.vscode-pylance@2022.11.10
PKief.material-icon-theme@4.22.0
redhat.vscode-yaml@1.10.1
streetsidesoftware.code-spell-checker@2.11.0
william-voyek.vscode-nginx@0.7.2
```

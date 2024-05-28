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

[GitHub Monaspace](https://github.com/githubnext/monaspace), configured with [Visual Studio Code](app/vscode/settings.json#L7-L9).

## Visual Studio Code extensions

```sh
$ vsc --list-extensions --show-versions
darkriszty.markdown-table-prettify@3.6.0
dbaeumer.vscode-eslint@2.4.4
editorconfig.editorconfig@0.16.4
golang.go@0.41.4
hashicorp.terraform@2.30.1
ms-azuretools.vscode-docker@1.29.1
ms-python.black-formatter@2024.2.0
ms-python.isort@2023.10.1
ms-python.python@2024.6.0
ms-python.vscode-pylance@2024.5.1
pkief.material-icon-theme@5.3.0
redhat.vscode-yaml@1.14.0
streetsidesoftware.code-spell-checker@3.0.1
william-voyek.vscode-nginx@0.7.2
```

# dotfiles - macOS

- [Highlights](#highlights)
- [Editor font](#editor-font)
- [Visual Studio Code extensions](#visual-studio-code-extensions)

## Highlights

- A [`.bash_profile`](.bash_profile) fixing a few annoying macOS toolchain items, such as:
	- `BASH_SILENCE_DEPRECATION_WARNING`.
	- `COPYFILE_DISABLE`.
	- Nicer `ls` colors.
- Useful [Bash aliases](.bash_profile#L54-L93).
- `.gitconfig`:
	- [aliases](.gitconfig#L53-L82).
	- Work/personal [profile switching](.gitconfig#L84-L85) based on repository path.
	- [userdiff](.gitattributes-global) configuration.
- [Visual Studio Code](https://code.visualstudio.com/) user [settings](app/vscode).
- [Rectangle](https://github.com/rxhanson/Rectangle) user [settings](app/rectangle/RectangleConfig.json).

## Editor font

[GitHub Monaspace](https://github.com/githubnext/monaspace), configured with [Visual Studio Code](app/vscode/settings.json#L9-L10).

## Visual Studio Code extensions

```sh
$ vsc --list-extensions
dbaeumer.vscode-eslint
editorconfig.editorconfig
ms-python.black-formatter
ms-python.debugpy
ms-python.isort
ms-python.python
ms-python.vscode-pylance
ms-python.vscode-python-envs
pkief.material-icon-theme
redhat.vscode-yaml
streetsidesoftware.code-spell-checker
tamasfe.even-better-toml
```

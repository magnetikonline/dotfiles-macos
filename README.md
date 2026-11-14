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
$ code --list-extensions --show-versions
dbaeumer.vscode-eslint@3.0.34
editorconfig.editorconfig@0.18.2
hashicorp.terraform@2.40.1
ms-python.black-formatter@2026.8.0
ms-python.debugpy@2026.6.0
ms-python.isort@2026.8.0
ms-python.python@2026.10.0
ms-python.vscode-pylance@2026.4.1
ms-python.vscode-python-envs@1.42.0
pkief.material-icon-theme@5.40.0
redhat.vscode-yaml@2.0.0
streetsidesoftware.code-spell-checker@4.10.0
tamasfe.even-better-toml@0.21.2
```

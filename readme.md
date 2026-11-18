[日本語](#fontconfig設定)｜[English](#fontconfig-configuration)

# Fontconfig設定

## 目次

- [導入](#導入)
- [Fontconfig説明書](#fontconfig説明書)
- [版本一覧](#版本一覧)
- [利用許諾](#利用許諾)

## 導入

本リポジトリを`$HOME/.config/fontconfig`ディレクトリに複製する。`default`は希望するブランチ名やタグ名に置き換えること。ただし、先に`$HOME/.config/fontconfig`ディレクトリの中に保存されているファイルを全て削除しておくこと。

```Bash
git clone -vb default https://github.com/possior/config-fontconfig.git "$HOME/.config/fontconfig"
```

複製したリポジトリを更新する。`default`は希望するブランチ名やタグ名に置き換えること。

```Bash
cd "$HOME/.config/fontconfig"; git pull origin default
```

一部の設定は`installer.sh`スクリプトを実行して適切な位置に導入する必要がある。設定ファイルを上書き保存する場合は`-o`または`--overwrite`を、しない場合は`-p`または`--preserve`を指定すること。

```Bash
cd "$HOME/.config/bash"; chmod +x installer.sh; ./installer.sh
```

## Fontconfig説明書

| 対象ファイル | 概要 |
| :---  | :--- |

## 版本一覧

| 版本号 | 統一資源位置指定子 |
| :---: | :--- |
| `01.01` | [リポジトリ](https://github.com/possior/config-fontconfig/tree/ver.01.01.01/)、[リリース](https://github.com/possior/config-fontconfig/releases/tag/ver.01.01.01/) |

## 利用許諾

[CC0 1.0 Universal](./license.txt)。全権留保せず。自己責任で使用せよ、保証なし。

# Fontconfig Configuration

## Table of Contents

- [Installation](#installation)
- [Fontconfig Documents](#fontconfig-documents)
- [Version List](#version-list)
- [License](#license)

## Installation

Clone this repository at the directory `$HOME/.config/fontconfig`. Replace `default` with a branch or tag name you desire. Ensure that you have deleted all the files saved in the directory `$HOME/.config/fontconfig` in advance.

```Bash
git clone -vb default https://github.com/possior/config-fontconfig.git "$HOME/.config/fontconfig"
```

Update the cloned repository. Replace `default` with a branch or tag name you desire.

```Bash
cd "$HOME/.config/fontconfig"; git pull origin default
```

Some configuration require execution of the `installer.sh` script to install them at an appropriate location. Specify `-o` or `--overwrite` when overwriting the configuration files or `-p` or `--preserve` when not. This script overwrites them by default.

```Bash
cd "$HOME/.config/bash"; chmod +x installer.sh; ./installer.sh
```

## Fontconfig Documents

| Target File | Description |
| :---  | :--- |

## Version List

| Version Number | Uniform Resource Locator |
| :---: | :--- |
| `01.01` | [repository](https://github.com/possior/config-fontconfig/tree/ver.01.01.01/), [release](https://github.com/possior/config-fontconfig/releases/tag/ver.01.01.01/) |

## License

[CC0 1.0 Universal](./license.txt). No rights reserved. Use at your own risk, no warranty.

<!-- CC0 1.0 UNIVERSAL. NO RIGHTS RESERVED. USE AT YOUR OWN RISK, NO WARRANTY. -->
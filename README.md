# alt-ime-ahk

## この fork について

このリポジトリは [karakaram/alt-ime-ahk](https://github.com/karakaram/alt-ime-ahk) の fork です。

本家の「左右 Alt キーの空打ちで IME を OFF/ON する」という仕組みをベースに、Mac キーボードを Windows で使いやすくするための修飾キー入れ替えを追加しています。

### Mac キーボード向けの割り当て

| 物理キー | Windows 上の動作 | 空打ち |
| --- | --- | --- |
| 左 Command | 左 Alt | IME OFF（英数） |
| 左 Option | 左 Win | - |
| 右 Command | 右 Alt | IME ON（かな） |
| 右 Option | 右 Win | - |

これにより、PowerToys など別アプリで Win / Alt の remap を行わず、この exe だけで完結できます。

## ダウンロード

最新ビルドは以下からダウンロードできます。

[Latest build](https://github.com/wadap/alt-ime-ahk/releases/tag/latest)

`alt-ime-ahk.exe` を好きな場所に置いて起動してください。タスクトレイに常駐します。

終了する場合はタスクトレイのアイコンを右クリックし、「終了」をクリックしてください。

アンインストールは `alt-ime-ahk.exe` を削除するだけで OK です。

## ビルド

GitHub Actions で Windows 用 exe を自動ビルドします。

- `master` への push で `latest` Release を更新
- `v*` タグを push するとバージョン付き Release を作成
- exe と SHA-256 を Release に添付

## 元プロジェクト

この fork は以下のプロジェクトを元にしています。

- Repository: [karakaram/alt-ime-ahk](https://github.com/karakaram/alt-ime-ahk)
- 紹介記事: [Altの空打ちで日本語入力(IME)を切り替えるツールを作った](http://www.karakaram.com/alt-ime-on-off/)

元プロジェクトの実装・アイデアに感謝します。

## 元プロジェクトの概要

本家は、左右 Alt キーの空打ちで IME を OFF/ON する AutoHotKey スクリプトです。

- 左 Alt キーの空打ちで IME を「英数」に切り替え
- 右 Alt キーの空打ちで IME を「かな」に切り替え
- Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作

## 動作環境

- Windows
- AutoHotkey v1 系のスクリプトを GitHub Actions 上で exe 化

## JetBrains 製 IDE について

本家 README では、IntelliJ IDEA など JetBrains 製 IDE を使う場合に Tool Buttons をオンにする注意事項があります。必要に応じて本家 README も参照してください。

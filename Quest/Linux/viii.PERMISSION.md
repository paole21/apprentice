## パーミッションを操作できる

1. ファイルのオーナーとグループ
```Bash
$ touch ~ README.md ; ls -l ~
```

2. ファイルのパーミッション
* <ls -l>コマンドを用いて、ディレクトリ配下の"README.md"ファイルの詳細情報を確認します。
* 出力されたもののうち、行頭から2~10文字までに注目すると、"rw-r--r--"となっています。
* この9桁の文字列は"---(オーナー), ---(グループ), ---(その他のユーザー)"の順で、それぞれ読み取り権限:"r"、書き込み権限:"w"、実行権限:"x"の有無を表しています（ディレクトリの場合を除く）。
* 前述の出力結果を見てみると、"rw-r--r--"となっていますので、オーナーには読み取りと書き込み権限が、グループとその他のユーザーには読み取り権限のみが与えられています。

3. ファイルのパーミッションの設定
```Bash
$ chmod u=wrx ~/README.md
```

4. ディレクトリのパーミッションの設定
```Bash
$ mkdir ~ permission ; chmod g+w permission
```

5. スーパーユーザー
```Bash
$ sudo mkdir ~ superuser ; ls -ld superuser/
```
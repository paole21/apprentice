## ファイルを操作できる

1. ファイルの中身を出力
```Bash
$ cat /etc/hosts
```

2. ファイルの中身をスクロール表示
```Bash
$ less /etc/hosts
```

3. ファイルの作成
```Bash
$ cd ; touch README.md
```

4. ファイル名の変更
```Bash
$ mv README.md TMP.md
```

5. ファイルのコピー
```Bash
$ cp TMP.md COPY.md
```

6. ファイルの削除
```Bash
$ rm TMP.md
```

7. シンボリックリンク
```Bash
$ ln -s README.md README_SYMBOLIC.md \
;echo This is first text >> README.md \
;cat README_SYMBOLIC.md
```

8. ファイルの検索
```Bash
$ find ~ -name README
```

9. 検索
```Bash
$ touch ~/sample.txt ; echo -e "apple\nbanana\ngrape\nlemon" >> ~/sample.txt ; grep ^a ~/sample.txt
```
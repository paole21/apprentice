## GitHub を使って開発を進めることができる

### 2.プッシュ
```Bash
$ mkdir <GitHub上と同名ディレクトリ> ; cd 
$ touch README.md
$ git init
$ git add README.md ; git commit -m "This is a test commit"
$ git remote add origin git@github.com:<ユーザー名>/<同名ディレクトリ>.git '(; git remote -v)'
$ git commit -m "This's a first remote commit"
$ git push -u origin main
```

### 3. 追加の変更をプッシュ
```Bash
$ git add README.md ; git commit -m "This's fix commit"
$ git push origin main
```

### 4. クローン
```Bash
$ git clone <リモートリポジトリURL>
```
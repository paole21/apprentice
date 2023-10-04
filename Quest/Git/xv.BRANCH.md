## ブランチを利用して開発を進めることができる

### 1.ブランチの新規作成
```Bash
$ git branch feature
```

### 2. ブランチの切り替え
```Bash
$ git checkout feature
```

### 3. マージ
```Bash
$ git add * ; git commit -m "This's add commits"
$ git checkout main
$ git merge --no-ff feature
```

### 4. ブランチの名前を変更
```Bash
$ git branch -m feature rename
```

### 5. ブランチの削除
```Bash
$ git branch -d rename
```
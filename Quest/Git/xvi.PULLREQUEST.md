## GitHubフローに従って開発を進めることができる

### 1.プルリクエストとは
* プルリクエストとは、GitHub上の自分以外が管理しているリポジトリをクローンし、ソースコードの修正や変更を行った場合に、その変更をオリジナルのリポジトリに適用してもらうよう依頼をかけることをいいます。

* 目的としては、そのリポジトリを見ることができる誰もが、遠隔でコードの改善を行うことができ、また同時に、変更の是非について管理者による査読も可能にするためです。

### 2. プルリクエストの作成
```Bash
$ git branch pullrequest ; git checkout pullrequest
$ git add "任意の変更" ; git commit -m "This's a commit for pullrequest"
$ git push origin pullrequest
```

### 3. ローカルへのリモートリポジトリの変更内容の取り込み
```Bash
$ git checkout main
$ git pull origin main
$ git branch -d pullrequest
```
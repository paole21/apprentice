#!/bin/bash

echo "パスマネージャーへようこそ！"

#選択メニューを関数にする。
choose_menu ()
{
    echo 
    echo "次の選択肢から入力してください（Add Password/Get password/Exit）:"
    #3つのメニューから選ばれたものを変数chooseに代入する。
    read choose
}

#最初の選択メニューを表示する。
choose_menu

#"Exit"が選択されるまではパターン処理を繰り返す。
while [ "$choose" != "Exit" ]
do
        #"Add Password"が選択された場合、標準入力から変数にそれぞれ値を保存する。
	case "$choose" in
		"Add Password")
		    echo "サービス名を入力してください："
		    read service
		    echo "ユーザー名を入力してください："
		    read user
		    echo "パスワードを入力してください："
		    read password

		    #いずれかの値が空白で入力された場合、エラー表示し、
		    #メインメニューに戻る。
		    if [ -z "$service" ] || [ -z "$user" ] || [ -z "$password" ]; then
			    echo "いずれかの値が空白です。処理を中断し、メインメニューに戻ります。"

		    #3つの値が入力されている時は、それぞれを"pass-file.txt"に保存し、
		    #メインメニューに戻る。
		    else
			    echo "$service:$user:$password" | tee -a pass-file.txt
			    echo "パスワードの追加は成功しました。"
		    fi

		    choose_menu
                    ;;

                #"Get Password"が選択された場合は、サービス名を標準入力から
                #変数req_serviceに代入する。
	        "Get Password")
	            echo "サービス名を入力してください："
		    read req_service

		    #代入されたサービス名をパターンとして、"pass-file.txt"内を検索する。
		    if grep -q "^$req_service:" pass-file.txt; then
			    match=$(grep "^$req_service:" pass-file.txt)

			    #マッチした内容を":"ごとに区切り、変数に保存する。
			    req_service=$(echo "$match" | cut -d ":" -f 1)
			    req_user=$(echo "$match" | cut -d ":" -f 2)
			    req_password=$(echo "$match" | cut -d ":" -f 3)

			    #それぞれの値を出力する。
			    echo "サービス名：$req_service"
			    echo "ユーザー名：$req_user"
			    echo "パスワード：$req_password"

		    #登録されていなかった場合は、エラーを表示して、
		    #メインメニューに戻る。
		    else
			    echo "そのサービスは登録されていません。"
		    fi
		 
		    choose_menu
                    ;;

	       #選択メニュー以外の文字列が入力された場合、エラーを表示して、
	       #メインメニューに戻る。
               *)
		    echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"

		    choose_menu
		    ;;
        esac

done

echo
echo "Thank you!"
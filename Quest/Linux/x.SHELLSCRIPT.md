## シェルスクリプトを書くことができる

### 1.Hello
```Bash
$ cat << EOF >> say_hello.sh
#!/bin/bash

echo hello
EOF

$ chmod +x ./say_hello.sh \
; ./say_hello.sh
```

### 2.標準入力から値を受け取る
```Bash req_name.sh
#!/bin/bash

echo "What's your name?"
read ans

echo "Welcome, $ans!"
```

### 3.条件分岐
```Bash calculator.sh
#!/bin/bash

echo Enter two numbers:
read num1
read num2
echo "Choose an arithmetic operation (+, -, *, /):"
read ope

if [ "$ope" = "+" -o "$ope" = "-" -o "$ope" = "*" -o "$ope" = "/" ]; then
    case "$ope" in
            +)
                result=$(echo "scale=2; $num1 + $num2" | bc)
                ;;
            -)
                result=$(echo "scale=2; $num1 - $num2" | bc)
                ;;
            \*)
                result=$(echo "scale=2; $num1 * $num2" | bc)
                ;;
            /)
                if [ "$num2" = 0 ]; then
                    echo "You can't divide by 0"
                    exit 1
                else
                    result=$(echo "scale=2; $num1 / $num2" | bc)
                fi
    esac

    echo "Result=$result"

else
        echo "You have to choose any operation"
        exit 1

fi
```

### 4.繰り返し処理
```Bash up_to_100.sh
#!/bin/bash

for int in {1..100}
do
        if [ $(("$int" % 2)) = 0 ]; then
                echo "$int"

        fi
done
```
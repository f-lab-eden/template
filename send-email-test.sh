#/bin/sh

content=`cat $1`
body="{
    \"notificationType\": \"EMAIL\",
    \"subject\": \"${name}님 안녕하세요 :)\",
    \"content\": \"${content}\",
    \"data\": {
        \"name\": \"eden\"
    },
    \"from\": \"F-Lab & Company <hello@f-lab.kr>\",
    \"to\": \"eden@f-lab.kr\"
}"
echo $body

curl -XPOST -H'Content-Type: application/json' 'https://api.dev.f-lab.kr/admin/notification/v1/single' -d"$body"


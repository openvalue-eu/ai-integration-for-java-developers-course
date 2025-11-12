#!/bin/bash

WIKI_HOST='https://wiki.openvalue.dev'
files=$*

echo -n "Username: "
read username
echo -n "Password: "
read -s password

function uploadAsset() {
  token=$1
  folderId=$2
  fileName=$3
  echo "Uploading $3 to folder with id $2"
  curl -H "Authorization: Bearer $token" "$WIKI_HOST/u" \
    -F mediaUpload="{\"folderId\": $folderId}" \
    -F "mediaUpload=@$fileName"
}

function queryGraphQL() {
  query=$(echo $1 | sed 's#"#\\"#g' | tr -d '\n')
  token=$2

  headers=(-H 'Content-Type: application/json')
  if [ ! -z "$token" ]; then
    headers+=(-H "Authorization: Bearer ${token}")
  fi

  curl "${headers[@]}" "$WIKI_HOST/graphql" -d "
  {
    \"operationName\": null,
    \"variables\":{},
    \"query\": \"$query\"
  }"
}

# No password escaping :(
# Transform this into not-bash if you want to do better :)
token=$(queryGraphQL "
  mutation {
    authentication {
      login(
        username: \"${username}\",
        password: \"${password}\",
        strategy: \"local\"
      ) {
        jwt
      }
    }
  }
  " | jq -r '.data.authentication.login.jwt')

folderId=$(queryGraphQL "
  query {
    assets {
      folders(parentFolderId: 0) {
        slug,
        id
      }
    }
  }
" $token | jq -r '.data.assets.folders[] | select(.slug == "material") | .id')

for file in $files; do
  uploadAsset $token $folderId "$file"
done

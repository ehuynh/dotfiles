format-json () {
  if [ $# -eq 0 ]
    then
      python -m json.tool
    else
      echo "$1" | python -m json.tool
  fi
}

format-xml () {
  if [ $# -eq 0 ]
    then
      xmllint --format -
    else
      echo "$1" | xmllint --format -
  fi
}

gen-ssh-keys () {
  echo "Enter your email: "
  read emailaddy
  ssh-keygen -t rsa -C $emailaddy
}

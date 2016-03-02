pu () {
  pod update "$1" && show-notification "pod update done 👌" "pod update $1"
}

pi () {
  pod install && show-notification "pod install done 👌"
}

cb () {
  carthage bootstrap --platform iOS && show-notification "carthage bootstrap done 👌"
}

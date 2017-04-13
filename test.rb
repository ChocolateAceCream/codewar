markers = ["$","#"]
 p "a #b\nc$\nd $e f g".gsub(/\s+[#{markers.join}].*/, "")

p "abcedasdf".split-"cefagsdf".split

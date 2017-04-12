def pig_it text
  text.gsub(/[a-zA-Z]+/) {|match| match.chars.rotate.join+'ay'}
end
# Move the first letter of each word to the end of it, then add 'ay' to the end of the word.
def pig_it text
  text.gsub(/(\w)(\w*)/){|w| $2 + $1 + 'ay' }
end

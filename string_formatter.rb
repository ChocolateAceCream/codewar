=begin
Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

Example:

createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
=end
def createPhoneNumber(numbers)
  #TODO
  '('+numbers[0..2]*''+')'+' '+numbers[3..5]*''+'-'+number[6..-1]*''
  #using string formatter:
  '(%d%d%d) %d%d%d-%d%d%d%d' % numbers
end

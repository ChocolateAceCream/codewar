def valid_parentheses(string)
  result = 0
  string.each_char do |i|
     result-=1 if i=')'
     result+=1 if i='('
     return false if result < 0
  end
  return false if result > 0
  return true
  #your code here
end

p valid_parentheses("  (")

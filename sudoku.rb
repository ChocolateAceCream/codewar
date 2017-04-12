def validSolution(board)
  #your code here
  check = [1,2,3,4,5,6,7,8,9]
  return false if board.length !=9

  board.each do |i|
    return false if i.uniq.inject(:+)!=45
    return false if i.length !=9
   end

  board.transpose.each do |i|
    return false if (i&check).sort != check

   end

   [0,3,6].each do |i|

      [0,3,6].each do |j|
         array=[]
         board[i..i+2].each do |sub|
           array+=sub[j..j+2]
         end
         return false if (array&check).sort != check
      end
    end
    return true
end

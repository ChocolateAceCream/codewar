a=[1,2,3]
b=[4,5,6]

p a+b

def next_bigger(n)
  p n
  n = n.to_s.chars.map(&:to_i)
  return -1 if n.length == 1
  (1..n.length).each do |i|
    (i+1..n.length).each do |j|
        (1..j).each do |k|

        end
    if n[-i] == 0
      n[-i],n[-j] = n[-j], n[-i]
    elsif n[-i]==n[-j]
        i+=1
      elsif n[-i]>n[-j]

        n[-i],n[-j] = n[-j], n[-i]
        return n.join.to_i
      end
    end
  end
  return -1
  #your code hereretu
end

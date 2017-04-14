#https://www.codewars.com/kata/5672682212c8ecf83e000050/train/ruby

def find_all(number,n,layer,array)
p array
    return array if n == layer
    array << double(number)+triple(number)
    n+=1
    find_all(triple(n), n, layer, array)
    find_all(double(n), n, layer, array)
end
def double(number)
  return number*2+1
end

def triple(number)
  return number*3+1
end

p find_all(1,1,4,[])

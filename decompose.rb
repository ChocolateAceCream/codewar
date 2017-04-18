def getNext sq, n
  return nil if n<=0 or sq<0
  return [] if sq==0
  begin
    n -= 1
    result = getNext sq - n**2, n
    return result + [n] unless result.nil?
  end while n>=0
  nil
end

def decompose(n)
  getNext n**2, n
end

p decompose(50)

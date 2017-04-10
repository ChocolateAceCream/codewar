=begin
Is Prime

Define a function isPrime that takes one integer argument and returns true or false depending on if the integer is a prime.

    Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

=end
def find_prim(num)
    return false if num < 2
    (2...num).each do |i|
        return false if num % i == 0
    end
    return true
end

p find_prim(19)
p find_prim(12)
p find_prim(13)

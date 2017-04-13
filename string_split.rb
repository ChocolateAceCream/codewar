

def fun(str)
    str.split(' ').select {|i| return false unless i=~/[0-9]+.[0-9]+.[0-9]+.[0-9]+/}
end
a="1.2.3.4 123.45.67.89"
b='1.2.3 1.2.3.4.5'
p fun(a)
p fun(b)

=begin
Make a program that filters a list of strings and returns a list with only your friends name in it.

If a name has 4 letters in it, you can be sure that it has to be a friend of yours!

Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]
=end

def friend(friends)
    result = []
    friends.each do |i|
        result << i if i.length == 4
    end
    p result
end

friends = ["Ryan", "Kieran", "Jason", "Yous"]
friend(friends)

#better:
=begin
     def friend(friends)
         friends.select { |name| name.length == 4 }
     end
=end

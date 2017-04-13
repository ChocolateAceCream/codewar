def song_decoder(song)
    song.gsub(/(WUB)+/,' ').strip
end

=begin
Complete the solution so that it strips all text that follows any of a set of comment markers passed in. Any whitespace at the end of the line should also be stripped out.

Example:

Given an input string of:

apples, pears # and bananas
grapes
bananas !apples
The output expected would be:

apples, pears
grapes
bananas
The code would be called like so:

result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
# result should == "apples, pears\ngrapes\nbananas"

result = solution(""a #b\nc\nd $e f g"", ["#", "$"])

# result should == "a\nc\nd"
=end

def solution(input, markers)
result = input
p input
    markers.each do |i|
    i = Regexp.escape(i)  #escape any char that has special meaning in Regex
        p i
        result=result.gsub(/\s*#{i}.*?\n\s*/, "\n")  # ? means match as little as possible, default is match as much as possible
        p result
        result = result.gsub(/#{i}.*\z/, '')
        p result

    end
    return result.strip

end

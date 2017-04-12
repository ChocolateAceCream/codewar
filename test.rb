def pig_it text
	result=[]
 p text.split(/\W/)
	text.split(/W/).each do |i|
		if /[a-zA-Z]+/.match(i)
			result<<i.chars.rotate(1).join+'ay'
		else
			result<<i
		end
	end
		return result
end

 p pig_it('Pig latin is, cool?')

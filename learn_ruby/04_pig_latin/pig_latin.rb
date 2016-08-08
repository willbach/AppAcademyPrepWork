def one_word_pig(str)
	start = ''
	modified = str.downcase
	oink = ''
	if str =~ /\A[aeiou]/
		modified << 'ay'
		return modified
	else
		until modified =~ /\A[aeiou]/
			if modified[0] == 'q' && modified[1] == 'u'
				start << (modified[0] + modified[1])
				modified = modified.slice(2.. -1)
			else
				start << modified[0]
				modified = modified.slice(1.. -1)
			end
		end
		oink = modified + start + 'ay'
	end
	if str == str.capitalize
		return oink.capitalize
	end
	oink
end

def translate(str)
	oinking = str.split(' ')
	sentence = oinking.map {|oink| one_word_pig(oink)}
	sentence.join(' ')
end

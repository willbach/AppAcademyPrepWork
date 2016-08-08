def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, x=2)
	repeated = ''
	while x > 0
		repeated << (str + ' ')
		x -= 1
	end
	
	repeated.strip!
end

def start_of_word(str, x)
	i = 0
	start = ''
	while i < x
		start << str[i]
		i += 1
	end
	start
end

def first_word(str)
	first = str.split[0]
end

def titleize(str)
	words = str.downcase.split
	words.each {|word| word.capitalize! if !['do','over', 'and', 'the', 'if', 'or'].include?(word)}
	words[0].capitalize!
	words.join(' ')
end


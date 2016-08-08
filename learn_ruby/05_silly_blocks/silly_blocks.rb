def reverse_word(str)
	i = 0
	reversed_word = ''
	while i < str.length
		reversed_word.insert(0, str[i])
		i += 1
	end
	reversed_word
end

def reverser (&block)
	str = block.call
	sentence = str.split
	reverse_sentence = []
	sentence.each {|word| reverse_sentence << reverse_word(word)}
	reverse_sentence.join(" ")
end

def adder (x = 1, &block)
	block.call + x
end

def repeater(n = 1, &block)

	block_was_executed = true
	n.times {block.call}
	if n >= 1
		return n
	end
	block_was_executed
end

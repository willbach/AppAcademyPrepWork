class Book
	attr_accessor :book
	def title
		@title
	end
	
	def title=(title)
		new_title = title.capitalize.split
		minor_words = ['in', 'an', 'do', 'and', 'to', 'the', 'of', 'by', 'for', 'a', 'with', 'from']
		new_title.each {|word| word.capitalize! if (!minor_words.include?(word) || word == 'i')}
		@title = new_title.join(' ')
	end
end



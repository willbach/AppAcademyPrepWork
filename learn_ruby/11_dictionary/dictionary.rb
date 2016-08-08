class Dictionary
	attr_accessor :d
	def initialize
		@dict = {}
	end
	def entries
		@dict
	end
	def add(to_add)
		if to_add.is_a? String
			@dict[to_add] = nil
			return @dict
		end
		@dict.store(to_add.to_a.flatten[0], to_add.to_a.flatten[1])
	end
	def keywords
		@dict.keys.sort
	end
	def include?(str)
		if @dict.keys.include?(str)
			return true
		end
		return false
	end
	
	def find(str)
		key_results = []
		results = {}
		@dict.each do |key, value|
			if key.include?(str)
				key_results << key
			end
		end
		key_results.each do |key|
			results[key] = @dict[key]
		end
		results
	end
	
	def printable
		printable_value = []
		dict_keys = @dict.keys.sort
		dict_keys.each do |key|
			printable_value <<  "[#{key}] \"#{@dict[key]}\""
		end
		printable_value.join("\n")
	end
		
end





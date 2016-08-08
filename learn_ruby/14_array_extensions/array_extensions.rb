class Array
	def sum
		return 0 if self == []
		return self.inject(0) { |sum, num| sum + num }
	end
	
	def square
		return [] if self == []
		squares = []
		self.each {|x| squares << x ** 2}
		squares
	end
	
	def square!
		return 0 if self == []
		self.map! {|x| x ** 2}
	end
	
end


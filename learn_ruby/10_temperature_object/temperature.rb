class Temperature
	attr_accessor :temp
	def initialize(options = {:f => 0})
			@temp = options
	end
	class << self
		def from_celsius(temp)
			new({:f => (temp / 5 * 9 + 32)})
		end
		def from_fahrenheit(temp)
			new({:c => ((temp - 32) * 5 / 9)})
		end
	end
	def in_fahrenheit
		return @temp[:f] if @temp[:f]
		fahr_temp = @temp[:c].to_f / 5 * 9 + 32
	end
	def in_celsius
		return @temp[:c] if @temp[:c]
		cels_temp = (@temp[:f].to_f - 32) / 9 * 5
	end
end

class Celsius < Temperature
	def initialize(temp)
		@temp = {:c => temp}
	end
end
class Fahrenheit < Temperature
	def initialize(temp)
		@temp = {:f => temp}
	end
end

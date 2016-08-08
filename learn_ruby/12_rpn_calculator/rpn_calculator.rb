class RPNCalculator
	attr_accessor :calculator
	def initialize
		@calc = []
	end
	def push(num)
		@calc << num
	end
	def plus
		raise "calculator is empty" unless @calc.length > 1
		
		@calc << (@calc.pop + @calc.pop)
	end
	def minus
		raise "calculator is empty" unless @calc.length > 1
		second = @calc.pop
		first = @calc.pop
		@calc << (first - second)
	end
	def times
		raise "calculator is empty" unless @calc.length > 1
		@calc << (@calc.pop * @calc.pop)
	end
	def divide
		raise "calculator is empty" unless @calc.length > 1
		second = @calc.pop
		first = @calc.pop
		@calc << (first.to_f / second.to_f)
	end
	def value
		raise "calculator is empty" unless @calc.length > 0
		@calc[-1]
	end
	def tokens(str)
		i = 0
		split_up = str.split
		token = []
		while i < split_up.length
			if split_up[i] == '*'
				token << :*
			elsif split_up[i] == '/'
				token << :/
			elsif split_up[i] == '+'
				token << :+
			elsif split_up[i] == '-'
				token << :-
			else
				token << split_up[i].to_i
			end
			i += 1
		end		
		token
	end
	def evaluate(str)
		token = self.tokens(str)
		token.each do |x|
			if x == :*
				self.times
			elsif x == :/
				self.divide
			elsif x == :+
				self.plus
			elsif x == :-
				self.minus
			else
				self.push(x)
			end
		end
		self.value
	end
end
	
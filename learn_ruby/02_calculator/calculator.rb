def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(nums)
	nums.inject(0) {|sum, num| sum + num}
end

def multiply(a, b)
	multiple = 0
	while b > 0
		multiple += a
		b -= 1
	end
	multiple
end

def power(a, b)
	raised = 1
	while b > 0
		raised = raised * a
		b -= 1
	end
	raised
end

def factorial(num)
	if num < 0
		return "That is not possible."
	end
	if num == 0
		return 0
	end
	
	factorial = 1
	i = num
	while i > 0
		factorial *= i
		i -= 1
	end
	factorial
end

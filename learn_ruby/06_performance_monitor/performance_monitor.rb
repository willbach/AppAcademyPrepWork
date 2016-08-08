def measure(n = 1, &block)
	before = Time.now
	n.times {block.call}
	average_time = (Time.now - before) / n
end


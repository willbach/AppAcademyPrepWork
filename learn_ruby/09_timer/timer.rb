class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end
	
	def seconds=(seconds)
		@seconds = seconds
	end
	
	def time_string
		hours = @seconds / 3600
		time_left = @seconds % 3600 #time left in minutes
		minutes = time_left / 60
		seconds = time_left % 60 # time left in seconds
		if seconds.to_s.length == 2
			seconds_str = seconds.to_s
		else
			seconds_str = '0' + seconds.to_s
		end
		if minutes.to_s.length == 2
			minutes_str = minutes.to_s
		else
			minutes_str = '0' + minutes.to_s
		end
		if hours.to_s.length == 2
			hours_str = hours.to_s
		else
			hours_str = '0' + hours.to_s
		end		
		@time_string = "#{hours_str}:#{minutes_str}:#{seconds_str}"
	end
	
end


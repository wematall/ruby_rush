class Bridge

	def initialize
		puts "Bridge created"
		@opened = true
	end

	def open
		puts "bridge open, you can go"
		@opened = true
	end

	def is_opened?
		return @opened 
	end

	

end
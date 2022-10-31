class Bodybuilder

	def initialize
		@delta   = 0
		@biceps  = 0
		@triceps = 0
	end

# print muscles status
	def get_muscle_status
		puts "Бицепсы: #{@biceps}"
		puts "Трицепсы: #{@triceps}"
		puts "Дельтовидка: #{@delta}"
		puts ""
	end

# train some muscle
	def train_muscle(muscle)
		if muscle == "delta"
			@delta += rand(1..10)
		end

		if muscle == "biceps"
			@biceps += rand(1..10)
		end

		if muscle == "triceps"
			@triceps += rand(1..10)
		end

	end

end
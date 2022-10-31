class Chameleon

	def initialize
		puts "Привет я хамелеон"
		puts "Обычно я серый"
		# defoult color
		@color = "серый"
	end

	def change_color(color)
		puts "Теперь я #{color}!"
	end

end
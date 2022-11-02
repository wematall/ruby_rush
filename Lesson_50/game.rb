class Game
	
	def initialize(slovo)
		@hero = slovo
	end

	def find_zlodey(hero)
		case hero

		when "бэтмен"
			puts "Джокер!"
		when "шерлок холмс"
			puts "профессор мориарти"
		when "буратино"
			puts "Карабас-Барабас"
		when "фродо бэггинс"
			puts "Саурон"
		when "моцарт"
			puts "Сальери"
		else
			puts "Не удалось найти врага"
		end
	end

end
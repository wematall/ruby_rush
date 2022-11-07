class Films

	def initialize
		@content_path = File.dirname(__FILE__)
		@file_path = @content_path + "/data/films.txt"
	end

	def random_film()
		if File.exist?(@file_path)
			file = File.new(@file_path, 'r:UTF-8')
			file_content = file.readlines
			file.close

			film_index = rand(0.. file_content.length - 1)
			description_index = nil

			if film_index == 0
				film_index = 0
				description_index = film_index + 1
			elsif film_index % 2 == 0
				film_index = film_index
				description_index = film_index + 1
			else
				film_index = film_index -1
				description_index = film_index + 1
			end
				

			random_film = file_content[film_index].chomp
			description = file_content[description_index].chomp

			puts random_film
			puts description
		else
			puts "File films.txt not found"
		end

	end

end
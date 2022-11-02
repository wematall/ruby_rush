class Person

	def initialize(name, middle_name, age)
		@name = name
		@middle_name = middle_name
		@age = age 
		@favorite_movie = nil
	end

	def set_favorite_movie=(movie)
		@favorite_movie = movie 
	end

	def get_name
		return @name 
	end

	def get_middle_name
		return @middle_name
	end

	def get_age
		return @age 
	end

	def get_full_name
		return get_name + " " + get_middle_name
	end

	def get_favorite_movie
		return @favorite_movie
	end

end
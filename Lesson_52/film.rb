class Film

	def initialize(film_name, producer_name)
		@film_name = film_name
		@producer_name = producer_name
	end

	def get_film_name
		return @film_name
	end

	def get_producer_name
		return @producer_name
	end

end
class Person

	def initialize(first_name, middle_name, age)
		@first_name = first_name
		@middle_name = middle_name
		@age = age 
	end

	def is_elder?
		if @age > 60
			return true
		else
			return false
		end
	end

	def get_full_name()
		if is_elder?
			return "#{@first_name} #{@middle_name} \nИ ему #{@age} - пожилой"
		else
			return "#{@first_name}  \nИ ему #{@age} - молодой"
		end
	end

end
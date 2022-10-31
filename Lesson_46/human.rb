
class Human

	def initialize(first_name, patronic_name)
		@first_name = first_name
		@patronic_name = patronic_name
	end

	def get_full_name()
		return "#{@first_name} #{@patronic_name}"
	end

end
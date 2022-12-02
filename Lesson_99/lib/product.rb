class Product

	attr_reader :price, :amount 

	def initialize(params)
		@price = params.fetch(:price)
		@amount = params.fetch(:amount)
	end

end
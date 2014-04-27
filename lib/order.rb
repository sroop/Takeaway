class Order

attr_reader :dishes

	def initialize
		@dishes = []
	end

	def add(dish, quantity = 1)
		number = 1
		while number <= quantity
			@dishes << dish
			number += 1
		end
	end

	def price
		@dishes.inject(0) { |accu, dish| accu + dish.price }
	end

end
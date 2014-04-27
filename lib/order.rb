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
		@dishes
	end

	def price
		@price = @dishes.inject(0) { |accu, dish| accu + dish.price }
	end

	def view_order
		@list = @dishes.map do |dish|
			"#{dish.name} £#{dish.price}"
		end.join("\n")
	end

	def print_receipt
		puts "Your Order"
		puts "#{@list}"
		puts "-------------"
		puts "Price: £#{@price}"
		puts "-------------"
	end

end
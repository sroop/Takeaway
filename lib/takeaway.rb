class Takeaway

	attr_reader :menu

	def initialize(menu = [])
		@menu = menu
	end

	def add_menu(menu)
		@menu << menu
		@menu
	end

	def view(menu)
		menu.view_menu
	end

	def user_input
		puts "Type the name of the dish:"
		@dish = gets.chomp
		puts "Type the quantity:"
		@quantity = gets.chomp.to_i
	end

	def place(order)
		user_input
		order.add(@dish, @quantity)
	end	

	def price(order)
	end
end
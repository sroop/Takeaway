require_relative './text.rb'

class Takeaway

	include Text

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
		@user_input_dish = gets.chomp
		puts "Type the quantity:"
		@quantity = gets.chomp.to_i
	end

	# def place(order)
	# 	user_input
	# 	@dish = @menu.map { |dish| dish.name == @user_input_dish }
	# 	order.add(@dish, @quantity)
	# end	


	# def total_price(order)
	# 	order.price
	# end

	def confirm_order
		puts "Thank you for your order! We've sent you a text message to confirm the delivery."
		send_text
	end
end






























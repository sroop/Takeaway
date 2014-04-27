class Menu

	attr_reader :menu

	def initialize(menu = [])
		@menu = menu
	end

	def has_dishes?
		!@menu.empty?
	end

	def add_dish(dish)
		@menu << dish
		@menu
	end

	def view_menu
		@list = @menu.map do |dish|
			"#{dish.name} £#{dish.price}"
		end.join("\n")	
	end

	def print_menu
		view_menu
		puts "Menu:"
		puts "#{@list}"
	end

end
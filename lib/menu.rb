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
	end

	def view_menu
		list = @menu.map do |dish|
			"#{dish.name} £#{dish.price}"
		end.join("\n")
		puts "Menu:"
		puts "#{list}"
		list
	end

end
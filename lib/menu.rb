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

end
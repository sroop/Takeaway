class Menu

	attr_reader :menu

	def initialize(menu = [])
		@menu = menu
	end

	def has_dishes?
		@menu
	end

end
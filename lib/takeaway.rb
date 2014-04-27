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

end
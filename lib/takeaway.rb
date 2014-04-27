class Takeaway

	attr_reader :menu

	def initialize(menu = [])
		@menu = menu
	end

	def add_menu(menu)
		@menu << menu
		@menu
	end

	# def show(menu)

	# end

end
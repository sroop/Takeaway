require 'menu'

describe "Menu" do

	let(:dish_1) { double :dish, name: :"Salmon Sashimi", price: 11 }
	let(:dish_2) {double :dish, name: :"Tuna Sashimi", price: 11 }
	let(:menu) { Menu.new([dish_1, dish_2]) }
	
	it 'has a list of dishes' do
		expect(menu).to have_dishes
	end

end
require 'menu'

describe "Menu" do

	let(:dish_1) { double :dish, name: :"Salmon Sashimi", price: 11 }
	let(:dish_2) { double :dish, name: :"Tuna Sashimi", price: 11 }
	let(:dish_3) { double :dish, name: :"Mackerel Sashimi", price: 10 }
	let(:menu) { Menu.new([dish_1, dish_2]) }
	let(:menu2) { Menu.new([dish_1]) }
	
	it 'is initialized with a list of dishes' do
		expect(menu).to have_dishes
	end

	it 'can add to the list of dishes' do
		menu.add_dish(dish_3)
		expect(menu.menu).to eq([dish_1, dish_2, dish_3])
	end

	it 'can nicely format and print out the list of dishes' do
		expect(menu.view_menu).to eq("Salmon Sashimi £11\nTuna Sashimi £11")
	end

end
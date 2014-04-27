require 'takeaway'

describe 'Takeaway' do
	let(:dish_1) { double :dish, name: :"Salmon Sashimi", price: 11 }
	let(:dish_2) { double :dish, name: :"Tuna Sashimi", price: 11 }
	let(:dish_3) { double :dish, name: :"Chicken Katsu Curry", price: 12 }
	let(:sushi_menu) {double :menu, :view_menu => [:dish_1, :dish_2]}
	let(:donburi_menu) {double :menu, :view_menu => [:dish_3]}
	let(:youmesushi) { Takeaway.new([sushi_menu]) }
	# let(:dish_1) { double :dish, name: "Salmon Sashimi", price: 11}
	# let(:dish_2) { double :dish, name: "Tuna Sashimi", price: 10}
	# let(:menu) { double :menu :view_menu => [dish_1, dish_2]}
	
	context 'The menu:' do

		it 'is initialized' do
			expect(youmesushi.menu).to eq([sushi_menu])
			
		end

		it 'multiple menus can be added to the takeaway' do
			youmesushi.add_menu(donburi_menu)
			expect(youmesushi.menu).to eq([sushi_menu, donburi_menu])
		end

		# it 'is shown' do
		# 	expect(youmesushi.show(menu)).to eq("Salmon Sashimi £11")
		# end
		
	end

	# context 'Placing an order:' do
		
	# end

	# context 'The bill:' do
		
	# end

	# context 'Confirmation:' do
		
	# end

end
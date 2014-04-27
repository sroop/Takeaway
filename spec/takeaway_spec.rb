require 'takeaway'

describe 'Takeaway' do
	let(:dish_1) { double :dish, name: :"Salmon Sashimi", price: 11 }
	let(:dish_2) { double :dish, name: :"Tuna Sashimi", price: 11 }
	let(:dish_3) { double :dish, name: :"Chicken Katsu Curry", price: 12 }
	let(:sushi_menu) {double :menu, view_menu: [dish_1, dish_2] }
	let(:donburi_menu) {double :menu, view_menu: [dish_3] }
	let(:youmesushi) { Takeaway.new([sushi_menu]) }
	let(:order) { double :order, add: [dish_1], price: 11}
	
	context 'Interacting with the Menu class:' do

		it 'Menu is initialized' do
			expect(youmesushi.menu).to eq([sushi_menu])	
		end

		it 'Multiple menus can be added' do
			youmesushi.add_menu(donburi_menu)
			expect(youmesushi.menu).to eq([sushi_menu, donburi_menu])
		end

		it 'Selected menus can be viewed' do
			expect(youmesushi.view(sushi_menu)).to eq([dish_1, dish_2])
		end
		
	end

	context 'Interacting with the Order class:' do

		it 'User is asked to input the name and quantity of a dish' do
			youmesushi.stub(:gets).and_return("Salmon Sashimi", "3")
			expect(youmesushi.user_input).to eq(3)
		end

		# it 'User input is placed into an order' do
		# 	expect(order).to receive(:add)
  #    		youmesushi.place(order)
  #    		expect(order).to eq([dish_1])
		# end

		# it 'Calculates the total price of the order' do
		# 	expect(youmesushi.place(order)).to eq(dish_1)
		# 	expect(youmesushi.price(order)).to eq(11)
		# end

	end

	context 'Confirmation:' do

		it 'sends a text message when the order is placed' do
			youmesushi.stub(:send_text).and_return("Thank you for your order!")
			expect(youmesushi.confirm_order).to eq("Thank you for your order!")
		end
		
	end

end
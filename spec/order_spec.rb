require 'order'

describe 'Order' do
	
	let(:order) { Order.new }
	let(:dish_1) { double :dish, name: :"Salmon Sashimi", price: 11 }
	let(:dish_2) { double :dish, name: :"Tuna Sashimi", price: 10 }

	it 'is initialized with no dishes' do
		expect(order.dishes).to be_empty
	end

	it 'can add a dish' do
		order.add(dish_1)
		expect(order.dishes).to eq([dish_1])
	end

	it 'can add 3 of the same dish' do
		order.add(dish_1, 3)
		expect(order.dishes).to eq([dish_1, dish_1, dish_1])
	end

	it 'can calculate the total price' do
		order.add(dish_1)
		order.add(dish_2, 2)
		expect(order.price).to eq(31)
	end

	it 'can nicely format and print out the list of dishes and total price' do
		order.add(dish_1)
		order.add(dish_2, 2)
		expect(order.view_order).to eq("Salmon Sashimi £11\nTuna Sashimi £10\nTuna Sashimi £10")
	end

end
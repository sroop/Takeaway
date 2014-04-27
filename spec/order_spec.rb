require 'order'

describe 'Order' do
	
	let(:order) { Order.new }
	let(:dish) { double :dish, name: :"Salmon Sashimi", price: 11 }

	it 'is initialized with no dishes' do
		expect(order.dishes).to be_empty
	end

	it 'can add a dish' do
		order.add(dish)
		expect(order.dishes).to eq([dish])
	end

	it 'can add 3 of the same dishes' do
		order.add(dish, 3)
		expect(order.dishes).to eq([dish, dish, dish])
	end

end
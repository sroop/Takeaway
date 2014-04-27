require 'order'

describe 'Order' do
	
	let(:order) { Order.new }

	it 'is initialized with no dishes' do
		expect(order.dishes).to be_empty
	end

end
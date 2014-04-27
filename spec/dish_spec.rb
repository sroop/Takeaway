require 'dish'

describe 'Dish' do
	
	let(:dish) { Dish.new("Salmon Sashimi", 11) }

	it 'knows the name of the dish' do
		expect(dish.name).to eq("Salmon Sashimi")
	end

	it 'knows the price of the dish' do
		expect(dish.price).to eq(11)
	end

end
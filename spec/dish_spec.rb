require 'dish'

describe 'Dish' do
	
	let(:dish) { Dish.new("Salmon Sashimi") }

	it 'knows the name of the dish' do
		expect(dish.name).to eq("Salmon Sashimi")
	end

end
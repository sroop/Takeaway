require 'text'

describe 'Text' do

	class DummyClass
		include Text
	end

		let(:dummy_class) { DummyClass.new }
		let(:text) { Text.new }

	it 'tells the time in an hour from now' do
    	expect(dummy_class.time).to eq("#{Time.now.hour.next}:#{Time.now.min}")
  	end
	
end

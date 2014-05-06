require 'spec_helper'

describe 'PerfectMoney::VERSION' do
	it 'eql to 0.0.1' do
		expect(PerfectMoney::VERSION).to be_eql('0.0.1')
	end
end
require 'spec_helper'

describe PerfectMoney::Core::Configuration do
	context "#[]" do
		it "returns config obj" do
			config_aggregator = PerfectMoney::Core::Configuration.build_account_collection
			expect(config_aggregator["account_1"]).to be_a PerfectMoney::Core::Configuration::Account
		end
		it "returns nil" do
			config_aggregator = PerfectMoney::Core::Configuration.build_account_collection
			expect(config_aggregator["account_0"]).to be_nil
		end
	end
end
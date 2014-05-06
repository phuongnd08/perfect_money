$: << File.expand_path('../', __FILE__)
$: << File.expand_path('../lib', __FILE__)

require 'perfect_money'
require 'yaml'
require 'nokogiri'
require 'csv'

PerfectMoney::Core::Configuration.load('spec/config/perfect_money.yml')
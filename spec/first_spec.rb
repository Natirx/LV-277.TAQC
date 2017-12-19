require 'rspec'
require 'rubygems'

require_relative '../tests/first_example.rb'
require_relative '../tests/second_example.rb'


describe "Stub test" do

  let(:datasource) do
    First1.new
  end
    
  before do
    allow(First).to receive(:new).and_return(datasource)
  end

  it "returns currency_dollar" do
    #first = double("First")
    #first = instance_double("First", :add => 13)
    second = Second.new
    expect(second.sum(1, 2)).to eql(13)
  end

end

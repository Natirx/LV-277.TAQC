require 'rspec'
require_relative '../Abramov_88b.rb'

describe ".add" do
  context "given '4'" do
    it "returns 4" do
      expect(Abramov.amount_digits(11)).to eql(2)
    end
  end
end

## spec/string_calculator_spec.rb
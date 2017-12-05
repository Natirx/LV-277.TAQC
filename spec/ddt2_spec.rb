require 'rspec'
require 'rubygems'
require 'selenium-webdriver'

[
  ['foo', 'bar', true ],
  ['foo', 'baz', true ],
  ['invalid', 'bar', false],
].each do |v1, v2, expected|

  describe "open_cart" do
    #context hash = {key1: v1, :key2 => v2, :expected => expected} do
    context data1 = v1, data2 = v2, data3 = expected do
      it "returns currency_dollar" do
        #p data1
        p subject
        #p hash[:key1]
        #p subject[:key1]
        #p subject.values
        #puts "\t***subject par1 #{subject[par1]}"
        #puts "\t***v1 = #{v1}, v2 = #{v2}, expected = #{expected}"
      end
    end
  end

end
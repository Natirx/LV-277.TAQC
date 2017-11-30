require 'rspec'
require 'rubygems'
require 'selenium-webdriver'

[
  ['foo', 'bar', true ],
  ['foo', 'baz', true ],
  ['invalid', 'bar', false],
  # …
].each do |v1, v2, expected|
  describe "open_cart" do
    context "given main_page" do
      it "returns currency_dollar" do
        puts "\t***v1 = #{v1}, v2 = #{v2}, expected = #{expected}"
      end
    end
  end
end
require 'rubygems'
require 'test/unit'
require 'mocha/test_unit'

class Product

  def find(id)
    id
  end

end

class MiscExampleTest < Test::Unit::TestCase

  def test_mocking_a_class_method
    puts "test_mocking_a_class_method"
    product = Product.new
    Product.expects(:find).with(1).returns(product)
    assert_equal product, Product.find(1)
  end

end

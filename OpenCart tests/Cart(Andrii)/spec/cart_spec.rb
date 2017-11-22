require_relative './helpers/main_helpers'
describe Main do
  let(:page) { Page.new(@driver) }
  let(:cart) { Cart.new(@driver) }

  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    Main.set_quantity_zero
  end

  after(:each) do
    @driver.quit
  end
  context 'Check cart' do
    it 'verify that we add one item' do
      page.add_item_to_cart
      expect(page.get_1_first_chars_from_span).to eql(Main.return_quantity)
    end
    it 'check that  total price correctly changed  when we change quantity' do
      page.add_item_and_press
      cart.check_quanitity
      expect(@total_end).to eql (@total_begin)
    end
    it 'check that remove button work correctly' do
      page.add_item_and_press
      cart.test_remove_button
      expect(cart.find_macbook). to eql false
    end
  end
end

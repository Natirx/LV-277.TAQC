describe "open_cart" do

  context "test_price_cart" do
    it "return price" do
      expect(Application.get.load_home_page
             .go_to_empty_shooping_cart
             .check_empty_cart)
      .to be_truthy
    end
  end
end

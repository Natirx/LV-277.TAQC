describe "open_cart" do

  context "test_price_cart" do
    it "return price" do
      expect(Application.get.load_home_page
             .click_item
             .go_to_login_from_my_account
             .login_valid_user
             .click_remove_button(ProductRepository.MacBook.name)
             .check_empty_cart)
      .to be_truthy


    end
  end
end

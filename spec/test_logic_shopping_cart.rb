describe "open_cart" do
  $data_provider_mackbook
  context "test_price_cart" do
    it "return price" do
      expect(Application.get.load_home_page
             .click_macbookk
             .go_to_login_from_my_account
             .login_valid_user
             .check_cart_page($data_provider_mackbook)
             )
      .to be_truthy
    end
  end
end

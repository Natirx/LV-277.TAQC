describe "open_cart" do
  $data_provider_currency.each do |product, quantity, expect|
    context "test_price_cart" do
      it "return price" do
        expect(Application.get.load_home_page
               .click_macbookk
               .go_to_login_from_my_account
               .login_valid_user
               .check_total_price(product, quantity))
        .to eql(expect)
      end
    end
  end
end

describe "open_cart" do

  $data_provider_currency.each do |product, currency|

    context "product, currency" do
      it "returns currency_dollar" do
        expect(Application.get.load_home_page \
        .choose_currency_by_item(currency) \
        .price_macbook_product_text_withot_tax).to eql(product.prices_by_currency_item(currency))
      end
    end

  end

end
describe "open_cart" do
  context "test_search" do
    it "return failure search page" do
      expect(Application.get.load_product_search_page_component
                 .search_button_empty_click
                 .check_empty_search)
          .to be true
    end
  end
end
describe "open_cart" do
  context "Given empty search page" do
    it "return failure search page" do
      $log.info "Empty Search Test Started"
      expect(Application.get.load_product_search_page_component
                 .search_button_empty_click
                 .check_empty_search)
          .to be true
      $log.info "Empty Search Test Ended"
    end
  end
end
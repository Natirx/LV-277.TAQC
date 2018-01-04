describe "open_cart" do
  context "test_search" do
    it "return bug" do
      $log.info "Special Symbol Test Started"
      expect(Application.get.load_product_search_page_component
                 .input_search_text(SearchRepository.search_value_percent.searchvalue)
                 .search_all_items)
          .to eql(15)
      $log.info "Special Symbol Test Ended"
    end
  end
end
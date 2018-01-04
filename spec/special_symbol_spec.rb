describe "open_cart" do
  context "test_search" do
    it "return bug" do
      $log.info "return bug"
      expect(Application.get.load_product_search_page_component
                 .input_search_text(SearchRepository.search_value_percent.searchvalue)
                 .search_all_items)
          .to eql(15)
    end
  end
end
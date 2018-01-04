describe "open_cart" do
  context "test_search" do
    it "return search value" do
      $log.info "Smoke Test Started"
      expect(Application.get.load_product_search_page_component
                 .input_search_text(SearchRepository.search_value_mac.searchvalue)
                 .search_value)
        .to eql(SearchRepository.search_value_mac.searchvalue)
      $log.info "Smoke Test Ended"
    end
  end
end
describe "open_cart" do
  context "test_search" do
    it "return good sort by location" do
      $log.info "return good sort by location"
      expect(Application.get.load_product_search_page_component
                 .input_search_text(SearchRepository.search_value_mac.searchvalue)
                 .verify_location?)
          .to be true
    end
  end
end
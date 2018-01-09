describe "open_cart" do
  context "Given array of elements" do
    it "return good sort by location" do
      $log.info "Verify Search Test Started"
      expect(Application.get.load_product_search_page_component
                 .input_search_text(SearchRepository.search_value_mac.searchvalue)
                 .verify_location?)
          .to be true
      $log.info "Verify Search Test Ended"
    end
  end
end
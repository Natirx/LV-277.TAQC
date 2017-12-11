describe "open_cart" do
  context "test_search" do
    it "return good sort by location" do
      expect(Application.get.load_home_page
                 .input_search_text(SearchRepository.search_value_mac)
                 .search_button_click
                 .verify_location?)
          .to be true
    end
  end
end
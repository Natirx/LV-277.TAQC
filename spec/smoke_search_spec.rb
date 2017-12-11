describe "open_cart" do
  context "test_search" do
    it "return search value" do
      expect(Application.get.load_home_page
                 .input_search_text(SearchRepository.search_value_mac)
                 .search_button_click
                 .search_value)
        .to eql(SearchRepository.search_value_mac)
    end
  end
end

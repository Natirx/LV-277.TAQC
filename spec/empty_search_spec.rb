describe "open_cart" do
  context "test_search" do
    it "return failure search page" do
      expect(Application.get.load_home_page
                 .search_button_click
                 .check_empty_search)
          .to be true
    end
  end
end
MENU_ITEMS_ARRAY = ["Desktops", "Laptops & Notebooks", "Components", "Tablets", "Software", "Phones & PDAs", "Cameras", "MP3 Players"]

describe "Open_card" do
  context "Given array of item names" do
    it "Return the same array if all elemente were successfully found" do
      $log.info "Smoke test started"
      expect(Application.get.load_header_menu_component
                 .menu_check_items(MENU_ITEMS_ARRAY))
      .to eql(MENU_ITEMS_ARRAY)
      $log.info "Smoke test ended"

    end
  end
end
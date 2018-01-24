describe "Open_card" do

  context "Given left bar paragraph in which is count of products" do

    it "Return actual count of products in this left bar paragraph" do
      $log.info "Test 'compare count of products' started"
      @hrm = HeaderMenuRepository
      expect(Application.get.load_header_menu_component
          .make_menu_subitem_click(@hrm.item_path, @hrm.subitem_path)
          .get_number_of_product_count
          .get_left_bar_product_count).to eql(true)
      $log.info "Test 'compare count of products' ended"
    end

  end

end
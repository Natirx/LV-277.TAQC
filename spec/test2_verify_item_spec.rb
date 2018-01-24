describe "Open_card" do

  context "Given title of the product" do

    it "Return 'Element is found' if element is found" do
      $log.info "Test 'Find element' started"
      @hrm = HeaderMenuRepository
      expect(Application.get.load_header_menu_component
          .make_menu_subitem_click(@hrm.item_path, @hrm.subitem_path)
          .verify_product_existing(ProductRepository.apple)).to eql(true)
      $log.info "Test 'Find element' ended"
    end

  end

end


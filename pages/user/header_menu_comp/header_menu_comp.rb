class HeaderMenuComponent

  def menu_item_path(item_name)
    HeaderMenuSelector.menu_item_path(item_name)
  end

  def menu_subitem_path(sub_item_name)
    HeaderMenuSelector.menu_subitem_path(sub_item_name)
  end

end
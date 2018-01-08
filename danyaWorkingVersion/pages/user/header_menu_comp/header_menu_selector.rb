class HeaderMenuSelector

  def self.menu_item_path(menu_item_name)
    {:xpath => "//ul[@class='nav navbar-nav']/li/a[contains(text(), '#{menu_item_name}')]"}
  end

  def self.menu_subitem_path(menu_subitem_name)
    {:xpath => "//li/div/div/ul/li/a[contains(text(), '#{menu_subitem_name}')]"}
  end

end
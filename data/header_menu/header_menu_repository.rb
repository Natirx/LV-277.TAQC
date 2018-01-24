require_relative "header_menu"

class HeaderMenuRepository

  def self.menu_all_items
    [HeaderMenu.new("Desktops", ["PC", "Mac"]),
     HeaderMenu.new("Laptops & Notebooks", ["Macs", "Windows"]),
     HeaderMenu.new("Components", ["Mice and Trackballs", "Monitors"]),
     HeaderMenu.new("Tablets", ""),
     HeaderMenu.new("Software",""),
     HeaderMenu.new("Phones & PDAs", ""),
     HeaderMenu.new("Cameras", ""),
     HeaderMenu.new("MP3 Players", "")]
  end

  def self.item_path
    @number = menu_all_items[2].get_item_name
  end

  def self.subitem_path
    @number = menu_all_items[2].get_subitem_name[1]
  end

end
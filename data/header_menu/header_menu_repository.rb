require_relative "header_menu"

class HeaderMenuRepository

  def self.menu_all_items
    [HeaderMenu.new("Desktops", ["PC", "Mac"]),
     HeaderMenu.new("Laptops & Notebooks", ["Macs", "Windows"]),
     HeaderMenu.new("Components", ["Mice and Trackballs", "Monitors"]),
     HeaderMenu.new("Tablets"),
     HeaderMenu.new("Software"),
     HeaderMenu.new("Phones & PDAs"),
     HeaderMenu.new("Cameras"),
     HeaderMenu.new("MP3 Players")]
  end

  def self.menu_item_path(menu_item_name)
    {:xpath => "//ul[@class='nav navbar-nav']/li/a[contains(text(), '#{menu_item_name}')]"}
  end

end
class ProductRepository

  private_class_method :new

  def self.desktop_menu
    [Product.new("PC (0)"),
     Product.new("Mac (1)")
     ]
  end

  def self.desktop_pc
    desktop_menu[0]
  end

  def self.desktop_mac
    desktop_menu[1]
  end

end

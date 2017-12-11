
require_relative '../../data/product.rb'
require_relative '../../data/product_repository.rb'


class HeaderMenuComponent

  def initialize(driver)
    @driver = driver
    @navigation_panel = @driver.find_element(:id, "top")
    @desktop = @driver.find_element(:link, "Desktops")

  end


  def navigation_panel
    @navigation_panel
  end

  def desktop
    @desktop
  end

  def desktop_mac
    navigation_panel.click
    desktop.click
    @driver.find_element(:link, "Mac (1)")
  end

  def desktop_pc
    navigation_panel.click
    desktop.click
    @driver.find_element(:link, "PC (0)")
  end


  def click_desktop_mac
    desktop_mac.click
  end

  def click_desktop_pc
    desktop_pc.click
  end



  def choose_desktop_product_by_category(product)

    case  product.category
    when ProductRepository.desktop_pc.category

      choose_desktop_pc
    when ProductRepository.desktop_mac.category

      choose_desktop_mac
    else
      choose_desktop_mac
    end
  end


  def choose_desktop_pc
    click_desktop_pc
    sleep 2
    ProductPage.new @driver
  end

  def choose_desktop_mac
    click_desktop_mac
    sleep 2
    ProductPage.new @driver
  end

end

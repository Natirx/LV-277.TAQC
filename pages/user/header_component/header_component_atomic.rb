require_relative 'header_component.rb'

class HeaderComponentAtomic
  attr_reader :header_component

  def initialize(driver)
    @header_component = HeaderMenuComponent.new (driver)
  end

  def click_navigation_panel
    @header_component.navigation_panel.click
  end

  def click_desktop
    click_navigation_panel
    @header_component.desktop.click
  end

  def desktop_mac
    click_navigation_panel
    click_desktop
    @header_component.mac
  end

  def desktop_pc
    click_navigation_panel
    click_desktop
    @header_component.pc
  end

  def click_desktop_pc
    desktop_pc.click
  end


  def click_desktop_mac
    sleep 2
    desktop_mac.click
  end


  def choose_desktop_mac
    click_desktop_mac
    sleep 2
  end

end

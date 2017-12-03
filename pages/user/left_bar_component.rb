class leftBarComponent

  # DESKTOPS
  def desktops
    @driver.find_element(css: "#column-left > .list-group > a:nth-child(1)" )
  end

  def desktops_pc
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(1) .dropdown-menu > .dropdown-inner > ul > li:nth-child(1) > a" )
  end

  def desktops_mac
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(1) .dropdown-menu > .dropdown-inner > ul > li:nth-child(2) > a" )
  end

end
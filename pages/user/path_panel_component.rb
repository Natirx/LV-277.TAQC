class pathPanelComponent

  # DESKTOPS
  def desktops
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(1) > a" )
  end

  def desktops_pc
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(1) .dropdown-menu > .dropdown-inner > ul > li:nth-child(1) > a" )
  end

  def desktops_mac
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(1) .dropdown-menu > .dropdown-inner > ul > li:nth-child(2) > a" )
  end

  def desktops_show_all_desktops
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(1) .dropdown-menu > a" )
  end

  # LAPTOPS_AND_NOTEBOOKS
  def laptops_and_notebook
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(2) > a" )
  end

  def laptops_and_notebooks_macs
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(2) .dropdown-menu > .dropdown-inner > ul > li:nth-child(1) > a" )
  end

  def laptops_and_notebooks_windows
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(2) .dropdown-menu > .dropdown-inner > ul > li:nth-child(2) > a" )
  end

  def laptops_and_notebooks_show_all_desktops
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(2) .dropdown-menu > a" )
  end

  # COMPONENTS
  def components
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(3) > a" )
  end

  def components_mice_and_trackballs
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(3) .dropdown-menu > .dropdown-inner > ul > li:nth-child(1) > a" )
  end

  def components_monitors
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(3) .dropdown-menu > .dropdown-inner > ul > li:nth-child(2) > a" )
  end

  def components_printers
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(3) .dropdown-menu > .dropdown-inner > ul > li:nth-child(3) > a" )
  end

  def components_scanners
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(3) .dropdown-menu > .dropdown-inner > ul > li:nth-child(4) > a" )
  end

  def components_web_cameras
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(3) .dropdown-menu > .dropdown-inner > ul > li:nth-child(5) > a" )
  end

  def components_show_all_desktops
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(3) .dropdown-menu > a" )
  end

  # TABLETS
  def tablets
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(4) > a" )
  end

  # SOFTWARE
  def software
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(5) > a" )
  end

  # PHONES AND PDAS
  def phones_and_pdas
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(6) > a" )
  end

  # CAMERAS
  def cameras
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(7) > a" )
  end

  # MP3 PLAYERS
  def mp3_players
    @driver.find_element(css: ".nav.navbar-nav > li:nth-child(8) > a" )
  end

  # CLICK_DESKTOPS
  def click_desktops
    desktops.click
  end

  def click_desktops_pc
    desktops.click
    desktops_pc.click
  end

  def click_desktops_mac
    desktops.click
    desktops_mac.click
  end

  def click_desktops_show_all_desktops
    desktops.click
    desktops_show_all_desktops.click
  end

  # CLICK_LAPTOPS_AND_NOTEBOOKS
  def click_laptops_and_notebooks
    laptops_and_notebook.click
  end

  def click_laptops_and_notebooks_macs
    laptops_and_notebook.click
    laptops_and_notebook_macs.click
  end

  def click_laptops_and_notebooks_windows
    laptops_and_notebook.click
    laptops_and_notebooks_windows.click
  end

  def click_laptops_and_notebooks_show_all_desktops
    laptops_and_notebook.click
    laptops_and_notebooks_show_all_desktops.click
  end

  # CLICK_COMPONENTS
  def click_components
    components.click
  end

  def click_components_mice_and_trackballs
    components.click
    components_mice_and_trackballs.click
  end

  def click_components_monitors
    components.click
    components_monitors.click
  end

  def click_components_printers
    components.click
    components_printers.click
  end

  def click_components_scanners
    components.click
    components_scanners.click
  end

  def click_components_web_cameras
    components.click
    components_web_cameras.click
  end

  # CLICK_TABLETS
  def click_tablets
    tablets.click
  end

  # CLICK_SOFTWARE
  def click_software
    software.click
  end

  # CLICK_PHONES_AND_PDAS
  def click_phones_and_pdas
    phones_and_pdas.click
  end

  # CLICK_CAMERAS
  def click_cameras
    cameras.click
  end

  # CLICK_MP3_PLAYERS
  def click_mp3_players
    mp3_players.click
  end


end
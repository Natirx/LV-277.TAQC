class PathPanelComponent < HeaderComponent

  def home_logo
    @driver.find_element(:css, ".fa.fa-home")
  end
  #TODO for all li element that present in panel

  # page object get text
  # page object atomic set text
  # page object atomic set clear
  # page object atomic set click
  def click_home_logo
    home_logo.click
  end


  # business logic of page

  def go_to_home_page_via_home_logo
    click_home_logo
    MainPage.new

  end

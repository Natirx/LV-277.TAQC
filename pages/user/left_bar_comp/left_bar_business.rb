require_relative 'left_bar_selector.rb'

class LeftBarBusiness

  def product_count
    @count = Array(@driver.find_elements(LeftBarSelector.product_title_path))
  end

end